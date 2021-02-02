FROM rocker/verse:4.0.3

RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated --no-install-recommends --no-upgrade \
  curl \
  zip

ENV RENV_VERSION 0.12.5
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

## Install packages
RUN mkdir /home/analysis
COPY . /home/analysis

WORKDIR /home/analysis
RUN R -e 'renv::consent(provided=TRUE)'
RUN R -e 'renv::restore()'
