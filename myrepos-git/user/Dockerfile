## -*- docker-image-name: "vdemeester/myrepos-git:user1000" -*-
FROM vdemeester/myrepos-git
MAINTAINER Vincent Demeester <vincent@sbr.pm>

# Add a user with uid 1000
RUN adduser -s /bin/bash -u 1000 -D user \
    && cp /root/.mrtrust /home/user

