#!/bin/bash

TECHNOLOGY=go
CONTAINERNAME=build-${TECHNOLOGY}
GOVERSION=1.8.3
echo Creating Build-Container ${CONTAINERNAME}:${GOVERSION}

docker build -t ${CONTAINERNAME}:${GOVERSION} --build-arg GOVERSION=${GOVERSION} .

