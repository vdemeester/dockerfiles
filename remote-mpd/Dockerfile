FROM debian
MAINTAINER Vincent Demeester "vincent+docker@sbr.pm"

RUN apt-get -qq update
#RUN apt-get -y install locales
#RUN locale-gen en_US en_US.UTF-8
#RUN dpkg-reconfigure locales 

RUN apt-get install -y dash mpd mpc
RUN mkdir -p /var/run/mpd
RUN chown -R mpd /var/run/mpd
ADD mpd.conf /etc/mpd.conf

EXPOSE 6600 8000

VOLUME /var/lib/mpd/music

CMD ["--no-daemon", "--stdout", "-v", "/etc/mpd.conf"]
ENTRYPOINT ["/usr/bin/mpd"]
