## -*- docker-image-name: "vdemeester/obnam" -*-
FROM debian:jessie

# Install obnam
RUN apt-get update && \
    apt-get -y install obnam ssh && \
    apt-get clean

# Let's define some convention folders
RUN mkdir -p /obnam/source /obnam/destination

# Add a user with uid 1000
RUN adduser --shell /bin/bash --uid 1000 --disabled-password --gecos "" user && \
    mkdir -p /home/user/run && \
    chown -R user /home/user/run

USER user

# Define default behavior
COPY obnam-entrypoint.sh /usr/bin/
ENTRYPOINT ["/usr/bin/obnam-entrypoint.sh"]
# No arguments by default :)
CMD [""]
