FROM ubuntu:16.04

ENV SOURCES_PATH=/development

ARG JAVA_VERSION
ARG SBT_VERSION
ARG GRADLE_VERSION

ENV JAVA_VERSION=${JAVA_VERSION}
ENV SBT_VERSION=${SBT_VERSION}
ENV GRADLE_VERSION=${GRADLE_VERSION}
ENV GRADLE_PATH=/usr/local/gradle-${GRADLE_VERSION}

ENV PATH=${PATH}:${GRADLE_PATH}/bin

RUN    apt-get update && apt-get install -y openjdk-${JAVA_VERSION}-jdk wget unzip \
    && wget http://dl.bintray.com/sbt/debian/sbt-${SBT_VERSION}.deb \
    && dpkg -i sbt-${SBT_VERSION}.deb \
    && apt-get update && apt-get install -y sbt \
    && wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && mkdir ${GRADLE_PATH} \
    && unzip -d /usr/local gradle-${GRADLE_VERSION}-bin.zip \
    \
    && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm sbt-${SBT_VERSION}.deb \
    && rm gradle-${GRADLE_VERSION}-bin.zip

VOLUME ${SOURCES_PATH}
WORKDIR ${SOURCES_PATH}

CMD /bin/bash
