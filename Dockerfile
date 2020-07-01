FROM centos:centos6.7
# docker build -t cent_yum:6.7 . 
# docker run --rm -v /tmp/yum_package:/tmp/yum_package cent_yum:6.7 install -y --downloadonly --downloaddir=/tmp/yum_package nagios-plugins-all
LABEL maintainer="pluhin@gmail.com"

RUN yum install epel-release -y && \
    mkdir -p /tmp/yum_package &&\
    sed -i '/^#baseurl.*/s/^#//' etc/yum.repos.d/epel.repo && \
    sed -i '/^mirrorlist.*/s/^/#/' etc/yum.repos.d/epel.repo 


ENTRYPOINT ["/usr/bin/yum"]