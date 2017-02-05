FROM eu.gcr.io/techstories-155021/jenkins-slave-jnlp
MAINTAINER Benjamin Kendinibilir <bkendinibilir@mac.com>

USER root

RUN set -x \
    && apk upgrade --update \
    && apk add --no-cache docker

USER $USER