#!/bin/bash
### usage:   ./run.sh -b <build-container> -s <source-code-folder>
### examples:
###   ./run.sh -b build-go:1.8.3     -s /user/hugo/sources
###   ./run.sh -b build-jvm:8        -s /user/hugo/sources
###   ./run.sh -b build-rust:1.19.0  -s /user/hugo/sources

while getopts s:b: option
do
 case "${option}"
 in
 s) SOURCE_FOLDER=${OPTARG};;
 b) BUILD_CONTAINER=${OPTARG};;
 esac
done

echo SOURCE_FOLDER is ${SOURCE_FOLDER}
echo BUILD_CONTAINER is ${BUILD_CONTAINER}
docker run -ti -v ${SOURCE_FOLDER}:/development/ ${BUILD_CONTAINER}
