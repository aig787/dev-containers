ARG BASE_VERSION=latest
FROM dev-containers/base:${BASE_VERSION}

USER root
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y pkg-config

USER dev
WORKDIR /home/dev
RUN mkdir /home/dev/.cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
VOLUME /home/dev/.cargo