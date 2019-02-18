ARG BASE_IMAGE=launcher.gcr.io/google/openjdk8
FROM ${BASE_IMAGE}

ARG DOCKER_VERSION=18.06.1~ce~3-0~debian

# Install Docker based on instructions from:
# https://docs.docker.com/engine/installation/linux/docker-ce/debian
RUN \
   apt-get -y update && \
   apt-get --fix-broken -y install && \
   apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common && \

   # Clean up build packages
   apt-get remove -y --purge curl gnupg2 software-properties-common && \
   apt-get clean  

ENTRYPOINT ["javac"]
