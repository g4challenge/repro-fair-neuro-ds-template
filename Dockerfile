FROM rocker/verse:4.0.4

USER root
RUN apt-get update && apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated --no-install-recommends --no-upgrade \
  curl \
  zip \
  libharfbuzz-dev \
  libfribidi-dev \
  python3-venv

USER rstudio
ENV RSESSION_PROXY_RSTUDIO_1_4=yes
ENV RENV_VERSION 0.13.2
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

## Copies your repo files into the Docker Container
WORKDIR /home/rstudio/project
COPY renv.lock renv.lock
RUN R -e 'renv::consent(provided=TRUE)'
RUN R -e 'renv::restore(project="/home/rstudio/project/")'
#RUN R -e 'renv::restore(packages = "renv")'
#RUN R -e 'renv::restore(project="/home/rstudio/")'
#RUN pip3 install --no-cache-dir jupyter-rsession-proxy
#RUN pip3 install jupyter

COPY . /home/rstudio/project

USER root
RUN chown -R rstudio /home/rstudio
RUN chmod -R 777 /tmp
RUN chown -R root:root /var/lib/rstudio-server
RUN chmod -R g=u /var/lib/rstudio-server
USER rstudio

#RUN R --vanilla -e 'renv::restore(project="/home/rstudio/project/")'
#RUN R -e 'renv::restore(project="/home/rstudio/project/")'

