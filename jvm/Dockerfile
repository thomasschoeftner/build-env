FROM openjdk:8u131-jdk-alpine

ENV SOURCES_PATH=/development

ARG JAVA_VERSION
ARG SBT_VERSION
ARG GRADLE_VERSION

ENV INSTALL_DIR=/usr/local
ENV SBT_VERSION=${SBT_VERSION}
ENV GRADLE_VERSION=${GRADLE_VERSION}

ENV SBT_PATH=${INSTALL_DIR}/sbt-${SBT_VERSION}
ENV GRADLE_PATH=${INSTALL_DIR}/gradle-${GRADLE_VERSION}

ENV PATH=${PATH}:${GRADLE_PATH}/bin:${SBT_PATH}/bin

RUN apk update \
 && apk add ca-certificates wget \
 && apk add bash \
 && update-ca-certificates \
 && echo "install SBT" \
 && wget https://cocl.us/sbt-${SBT_VERSION}.zip \
 && unzip -d ${INSTALL_DIR} sbt-${SBT_VERSION}.zip \
 && mv ${INSTALL_DIR}/sbt ${SBT_PATH} \
 && rm sbt-${SBT_VERSION}.zip \
 && echo "install Gradle" \
 && wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
 && unzip -d ${INSTALL_DIR} gradle-${GRADLE_VERSION}-bin.zip \ 
 && rm gradle-${GRADLE_VERSION}-bin.zip \
 && rm -rf /tmp/* /var/tmp/*
    
VOLUME ${SOURCES_PATH}
WORKDIR ${SOURCES_PATH}

CMD /bin/sh
