FROM localhost/thomasweise/docker-texlive-full

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical

RUN apt update && apt install -y git python3-pygments inkscape pandoc make asciidoc tar libalgorithm-diff-perl texlive-music

WORKDIR /srv/project
