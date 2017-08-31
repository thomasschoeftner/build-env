#!/bin/bash
### usage: build -s <source-folder> -b <build-container>

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
