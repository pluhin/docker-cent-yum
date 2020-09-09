FROM centos:centos7.8.2003
LABEL maintainer="pluhin@gmail.com"

RUN yum install epel-release -y && \
    yum install centos-release-scl -y && \
    yum install https://packages.icinga.com/epel/icinga-rpm-release-7-latest.noarch.rpm -y && \
    mkdir -p /tmp/yum_package


ENTRYPOINT ["/usr/bin/yum"]