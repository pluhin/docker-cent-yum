FROM centos:centos8.2.2004
LABEL maintainer="pluhin@gmail.com"

RUN dnf install -y 'dnf-command(config-manager)' && \
    dnf config-manager --set-enabled PowerTools && \
    dnf install -y epel-release && \
    dnf install -y https://packages.icinga.com/epel/icinga-rpm-release-8-latest.noarch.rpm -y && \
    mkdir -p /tmp/yum_package   

ENTRYPOINT ["/usr/bin/dnf"]