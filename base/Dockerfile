FROM openjdk:11-jdk

RUN apt-get update \
    && apt-get install -y sudo pkg-config zip g++ zlib1g-dev unzip python curl wget git software-properties-common file make --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN echo "Adding cirrus user and group" \
        && useradd --system --uid 1000 --shell /bin/bash --create-home cirrus \
        && adduser cirrus sudo \
        && chown --recursive cirrus:cirrus /home/cirrus

ENV HOME /home/cirrus

USER cirrus
WORKDIR /home/cirrus
