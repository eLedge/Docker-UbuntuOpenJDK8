FROM ubuntu:latest

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

# INSTALL OpenJDK8 and update certificates...
RUN apt-get update && \
  apt-get install --no-install-recommends --no-install-suggests -yq openjdk-8-jdk ca-certificates-java && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  update-ca-certificates -f
