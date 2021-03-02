FROM rocker/binder:4.0.3

USER root
RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated --no-install-recommends --no-upgrade \
  curl \
  zip \
  libharfbuzz-dev \
  libfribidi-dev

ENV RSESSION_PROXY_RSTUDIO_1_4=yes
ENV RENV_VERSION 0.13.0
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

## Declares build arguments
ARG NB_USER
ARG NB_UID
ARG HOME

## Copies your repo files into the Docker Container
USER root
#WORKDIR ${HOME}
COPY renv.lock renv.lock
RUN R -e 'renv::consent(provided=TRUE)'
RUN R -e 'renv::restore()'

COPY . ${HOME}
## Enable this to copy files from the binder subdirectory
## to the home, overriding any existing files.
## Useful to create a setup on binder that is different from a
## clone of your repository
## COPY binder ${HOME}

## Install packages

RUN chown -R ${NB_USER} ${HOME}

## Become normal user again
USER ${NB_USER}


