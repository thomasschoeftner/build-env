FROM ubuntu:16.04

ARG GOVERSION

ENV SOURCES_PATH=/development

ENV GOVERSION=${GOVERSION}
ENV GOROOT=/usr/local/go
ENV GOPATH=${SOURCES_PATH}
ENV PATH=${PATH}:${GOPATH}/bin:${GOROOT}/bin

VOLUME ${GOROOT}

RUN    apt-get update  && apt-get install -y wget \
    && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz \
    && tar -xvf go${GOVERSION}.linux-amd64.tar.gz \
    && mv go ${GOROOT} \
    \
    && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -rf go${GOVERSION}.linux-amd64.tar.gz

VOLUME ${SOURCES_PATH}
WORKDIR ${SOURCES_PATH}

CMD /bin/bash
