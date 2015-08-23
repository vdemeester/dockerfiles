## -*- docker-image-name: "vdemeester/scudcloud" -*-
# Run scudcloud in a container

# docker run -d
#        -v /etc/localtime:/etc/localtime:ro \
#        -v /tmp/.X11-unix:/tmp/.X11-unix \
#        -e DISPLAY=unix$DISPLAY \
#        -v $HOME/.config/scudcloud:/home/scudcloud/.config/scudcloud \
#        -v /run/user/1000/pulse/native:/run/pulse/socket \
#        -e PULSE_SERVER=unix:/run/pulse/socket \
#        -v ~/.config/pulse/cookie:/run/pulse/cookie \
#        -e PULSE_COOKIE=/run/pulse/cookie \
#        --name scudcloud \
#        vdemeester/scudcloud


FROM ubuntu:14.04
MAINTAINER Vincent Demeester <vincent@sbr.pm>

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:rael-gc/scudcloud && \
    apt-get update && \
    apt-get install -y scudcloud --no-install-recommends && \
    apt-get remove -y --purge software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    rm -fR /var/cache/apt/*

ENV HOME /home/scudcloud
RUN useradd --create-home --home-dir $HOME scudcloud \
	&& chown -R scudcloud:scudcloud $HOME

WORKDIR $HOME
USER scudcloud

ENTRYPOINT ["scudcloud"]
    
