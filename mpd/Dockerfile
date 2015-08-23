## -*- docker-image-name: "vdemeester/mpd" -*-
# Music player daemon
#
# docker run -d \
#	 -v /etc/localtime:/etc/localtime:ro \
#        -v /run/user/1000/pulse/native:/run/pulse/socket \
#        -e PULSE_SERVER=unix:/run/pulse/socket \
#        -v ~/.config/pulse/cookie:/run/pulse/cookie \
#        -e PULSE_COOKIE=/run/pulse/cookie \
#	 -v $HOME/.mpd:/var/lib/mpd \
#	 -p 6600:6600 \
#	 --name mpd \
#	 vdemeester/mpd	 
#
FROM alpine:3.2
MAINTAINER Vincent Demeester <vincent@sbr.pm>

RUN apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \
            --update mpc mpd pulseaudio && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /var/lib/mpd/playlists \
	&& mkdir -p /var/lib/mpd/music \
	&& touch /var/lib/mpd/state \
	&& touch /var/lib/mpd/tag_cache \
	&& chmod 0777 -R /var/lib/mpd \
	&& chown -R mpd /var/lib/mpd

ENV HOME /home/mpd
COPY mpd.conf /etc/mpd.conf
COPY mpd.sh /usr/local/bin/mpd.sh

RUN chmod +x /usr/local/bin/mpd.sh

WORKDIR $HOME
USER mpd

ENTRYPOINT [ "/usr/local/bin/mpd.sh" ]
