## -*- docker-image-name: "vdemeester/myrepos-utils" -*-
# A docker image with myrepos, git, mercurial & co to be used
FROM vdemeester/myrepos-git:latest
MAINTAINER Vincent Demeester <vincent@sbr.pm>

RUN apk add --update mercurial subversion && rm -rf /var/cache/apk/*
