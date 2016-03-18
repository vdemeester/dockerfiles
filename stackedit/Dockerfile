FROM mhart/alpine-node:5
MAINTAINER Vincent Demeester <vincent@sbr.pm>

ENV STACKEDIT_VERSION 3.1.14

RUN apk add --no-cache curl && \
    curl -o v${STACKEDIT_VERSION}.tar.gz -sSL https://github.com/benweet/stackedit/archive/v${STACKEDIT_VERSION}.tar.gz && \
    tar -xzf v${STACKEDIT_VERSION}.tar.gz && \
    rm v${STACKEDIT_VERSION}.tar.gz && \
    cd stackedit-${STACKEDIT_VERSION} && \
    npm install && \
    apk del curl


EXPOSE 3000

CMD node server.js
    
