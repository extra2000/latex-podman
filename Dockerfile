FROM docker.io/ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV TZ=Etc/UTC

# Setup locales
RUN apt update && apt install -y locales \
    && locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

RUN apt update && apt install -y \
        doxygen \
        texlive-full \
        graphviz \
        ghostscript \
        make \
        git \
        python3-pygments \
        inkscape \
        pandoc \
        make \
        asciidoc \
        tar \
        libalgorithm-diff-perl \
        texlive-music \
    && apt clean

WORKDIR /srv/project
