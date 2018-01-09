FROM kmubigdata/ubuntu-1604
MAINTAINER KMU BigData Lab

USER root

RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install --allow-unauthenticated -y r-base
RUN apt-get install -y libcurl4-openssl-dev

COPY r-packages.R /tmp/
RUN R CMD BATCH /tmp/r-packages.R
