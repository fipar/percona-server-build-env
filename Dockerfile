# To build use:
# docker build -t fipar/percona-server-build-env:v2 .
FROM centos:7
MAINTAINER Fernando Ipar <fipar at acm.org>

LABEL description="A linux environment to build Percona Server for MySQL"

RUN yum -y install \
  gcc \
  gcc-c++ \
  openssl \
  openssl-devel \
  check \
  bison \
  boost-devel \
  asio-devel \
  libaio-devel \
  ncurses-devel \
  readline-devel \
  pam-devel \
  wget \
  xz-devel \
  zlib-devel \
  perl-Env \
  time \
  numactl-devel \
  rpmdevtools \
  rpm-build \
  cmake \
  g++ \
  automake \
  autoconf \
  libtool \
  libtool-all-dev \
  libevent-dev \
  make \
  vim \
  epel-release 

RUN mkdir /src
RUN mkdir /build
RUN mkdir /lib/boost
WORKDIR /build

CMD ["/bin/bash"]
