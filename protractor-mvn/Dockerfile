FROM caltha/protractor
MAINTAINER vincent@sbr.pm

RUN apt-get update && apt-get install -y locales
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

ENV JAVA_VERSION 8
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
 
ENV MAVEN_VERSION 3.3.3
ENV MAVEN_HOME /usr/share/maven
ENV PATH "$PATH:$MAVEN_HOME/bin"

# install maven
RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
    && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
    
# install java8
RUN echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list && \
    echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && \
    apt-get update && \
    echo oracle-java${JAVA_VERSION}-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y --force-yes --no-install-recommends oracle-java${JAVA_VERSION}-installer oracle-java${JAVA_VERSION}-set-default && \
    apt-get install -y git optipng libjpeg-progs gifsicle && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 5.1.0

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
  && tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.gz" \
  && npm install -g bower \
  && npm install -g grunt-cli \
  && npm install -g gulp

# Protractor test project needs to be mounted at /project
# VOLUME ["/project"]
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

CMD [""]
ENTRYPOINT ["/entrypoint.sh"]
