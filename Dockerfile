FROM docker.io/thomasweise/docker-texlive-full
MAINTAINER extra2000 <https://github.com/extra2000>

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical

RUN apt update && apt install -y git python3-pygments inkscape pandoc make asciidoc tar libalgorithm-diff-perl

WORKDIR /srv/project
