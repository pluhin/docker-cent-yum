FROM centos:centos8.2.2004
LABEL maintainer="pluhin@gmail.com"

RUN yum install epel-release -y && \
    mkdir -p /tmp/yum_package


ENTRYPOINT ["/usr/bin/yum"]