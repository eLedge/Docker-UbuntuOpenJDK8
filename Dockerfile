FROM ubuntu:xenial

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

# INSTALL OpenJDK8 and update certificates...
RUN echo "deb http://archive.ubuntu.com/ubuntu xenial main universe restricted multiverse" > /etc/apt/sources.list \
  && apt-get update && apt-get upgrade && \
  && apt-get install --no-install-recommends --no-install-suggests -yq wget openjdk-8-jdk ca-certificates-java \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && update-ca-certificates -f
