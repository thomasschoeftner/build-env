FROM ubuntu:16.04

ARG RUST_VERSION

ENV SOURCES_PATH=/development

ENV RUST_VERSION=${RUST_VERSION}
ENV PATH=${PATH}:/root/.cargo/bin
ENV USER=root

RUN    apt-get update && apt-get install -y curl build-essential \
    && curl https://sh.rustup.rs -sSf | sh -s -- -y \
    \
    && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    

VOLUME ${SOURCES_PATH}
WORKDIR ${SOURCES_PATH}

USER ${USER}

CMD /bin/bash
