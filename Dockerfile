FROM docker.io/ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV TZ=Etc/UTC

# Update locales, install LaTeX full, passwordless sudo
RUN apt update \
    && apt upgrade -y \
    && apt install -y \
        locales \
        curl \
    && locale-gen en_US en_US.UTF-8 \
    && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 \
    && apt install -y \
        python3 \
        texlive-full \
        latexmk \
        graphviz \
        ghostscript \
        make \
        git \
        python3-pygments \
        inkscape \
        pandoc \
        asciidoc \
        tar \
        libalgorithm-diff-perl \
        texlive-music \
        tidy \
        xindy \
        epubcheck \
        fonts-noto-cjk \
        sudo \
    && apt clean \
    && useradd --create-home --shell /bin/bash docbuilder \
    && usermod -aG sudo docbuilder \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && rm -v /bin/sh \
    && ln --symbolic /bin/bash /bin/sh

# Setup virtualenv and sphinx
USER docbuilder
WORKDIR /home/docbuilder/
