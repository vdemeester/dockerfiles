## -*- docker-image-name: "vdemeester/obnam" -*-
FROM debian:jessie

# Install obnam
RUN apt-get update && \
    apt-get -y install obnam && \
    apt-get clean

# Let's define some convention
RUN mkdir -p /obnam/source /obnam/destination

COPY obnam-entrypoint.sh /usr/bin/

# Define default behavior
ENTRYPOINT ["/usr/bin/obnam-entrypoint.sh"]
# No arguments by default :)
CMD [""]
