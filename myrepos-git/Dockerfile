## -*- docker-image-name: "vdemeester/myrepos-git" -*-
# A docker image with myrepos, git, mercurial & co to be used
FROM alpine:3.2
MAINTAINER Vincent Demeester <vincent@sbr.pm>

ENV HUB_VERSION 2.2.1
# Add hub bin :P
RUN apk add --update myrepos git go bash \
    && git clone https://github.com/github/hub.git \
    && cd hub \
    && script/build \
    && mv ./hub /usr/bin \
    && cd .. && rm -fR hub \
    && apk del go bash \
    && rm -rf /var/cache/apk/*

COPY .mrtrust /root/.mrtrust
WORKDIR /src
