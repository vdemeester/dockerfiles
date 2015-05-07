## -*- docker-image-name: "vdemeester/myrepos-git" -*-
# A docker image with myrepos, git, mercurial & co to be used
FROM alpine:3.1
MAINTAINER Vincent Demeester <vincent@sbr.pm>

RUN apk add --update myrepos git && rm -rf /var/cache/apk/*
