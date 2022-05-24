ARG PYTHON=python:3.7.2

FROM $PYTHON

RUN apt-get update && apt-get install -y \
    screen

RUN mkdir /webarchive

VOLUME /webarchive

WORKDIR /webarchive

EXPOSE 8080


RUN useradd -ms /bin/bash -u 1000 archivist

USER archivist


