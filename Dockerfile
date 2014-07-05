FROM ubuntu:14.04

MAINTAINER James Fairbairn <james@netlagoon.com>

RUN ["apt-get", "update"]

RUN ["apt-get", "upgrade", "-y"]

RUN apt-get install -y curl wget git ssh-client

RUN useradd -m app
USER app
ENV HOME /home/app
