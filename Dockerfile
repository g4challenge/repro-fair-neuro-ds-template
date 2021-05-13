FROM g4challenge/verse:4.0.4

USER root
RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated --no-install-recommends --no-upgrade \
  curl \
  zip \
  libharfbuzz-dev \
  libfribidi-dev \
  python3-venv


ENV RENV_VERSION 0.13.2-32
RUN R --vanilla -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R --vanilla -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"


USER rstudio

## Copies your repo files into the Docker Container
WORKDIR /home/rstudio/project
COPY . /home/rstudio/project
RUN R -e 'renv::consent(provided=TRUE)'
RUN R -e 'renv::restore(project="/home/rstudio/project/")'
#RUN R -e 'renv::restore(packages = "renv")'
#RUN R -e 'renv::restore(project="/home/rstudio/")'



COPY .drake /home/rstudio/project/.drake
USER root
RUN chown -R rstudio:rstudio /home/rstudio


#RUN R --vanilla -e 'renv::restore(project="/home/rstudio/project/")'
#RUN R -e 'renv::restore(project="/home/rstudio/project/")'

