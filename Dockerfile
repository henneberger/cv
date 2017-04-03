FROM ubuntu:xenial
MAINTAINER Daniel Henneberger <henneberger.daniel@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy texlive-full && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]