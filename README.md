# docker-cent-yum
Grabber of packages from yum repos

## Run localy

### Build image

```bash
docker build -t cent_yum:6.7 .
```

### Grab packages

```bash
docker run --rm -v /tmp/yum_package:/tmp/yum_package cent_yum:6.7 install -y --downloadonly --downloaddir=/tmp/yum_package <PACKAGE_NAME>
```

## Run using image from docker registry

Branch name (example: `6.7`) is suffix in image tag on docker hub

Example: 

- Branch name: **6.7**
- Image name: pluhin31/yum-downloader:centos**6.7**

### Grab packages

```bash
docker run --rm -v /tmp/yum_package:/tmp/yum_package pluhin31/yum-downloader:centos6.7 install -y --downloadonly --downloaddir=/tmp/yum_package <PACKAGE_NAME>
```

> NOTE: `/tmp/yum_package` - have to exist on local host


