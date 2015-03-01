## -*- docker-image-name: "vdemeester/oracle-jdk8" -*-
# An docker image based on debian and using webupd8 repository
FROM debian:jessie
MAINTAINER Vincent Demeester <vincent@sbr.pm>

RUN \
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-java.list && \
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list.d/webupd8team-java.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get -y update && \
    apt-get -y install oracle-java8-installer
