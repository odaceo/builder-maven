ARG JAVA_VERSION
FROM odaceo/java:${JAVA_VERSION}

LABEL vendor="Odaceo" 
LABEL maintainer="Alexandre GARINO <alexandre.garino@odaceo.ch>"

ARG MAVEN_VERSION
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG /root/.m2
COPY scripts/maven.sh /root/
RUN set -eux; /root/maven.sh
