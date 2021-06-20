FROM ubuntu:focal

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386

RUN   apt-get update \
   && apt-get install -y  \
      autoconf automake bash bison bzip2 diffutils file flex m4 g++  gettext gperf \
      groff-base libncurses-dev libexpat1-dev  libssl-dev libtool libxml-parser-perl \
      make patch perl pkg-config sed shtool tar texinfo unzip zlib1g zlib1g-dev \
      lib32z1-dev lib32stdc++6  libelf-dev:i386 libelf1:i386 nano wget curl libelf1  \
      libtool-bin cmake libproxy-dev uuid-dev openssh-server liblzo2-dev autoconf automake bash  \
      gawk groff-base libncurses-dev libslang2 make patch perl pkg-config shtool sudo patchelf lzip \
      subversion tar  zlib1g zlib1g-dev git-core gettext libexpat1-dev libssl-dev cvs gperf unzip xxd bc lib32ncurses5-dev dos2unix libltdl-dev \
      python libxml-parser-perl gcc-multilib gconf-editor libxml2-dev g++-multilib gitk libncurses5 mtd-utils automake-1.15 \
      libncurses5-dev libvorbis-dev git autopoint autogen sed build-essential intltool libglib2.0-dev \
      xutils-dev lib32z1-dev xsltproc gtk-doc-tools
RUN rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash build
RUN usermod -aG sudo build
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> \
/etc/sudoers

USER build

WORKDIR /home/build

RUN wget https://raw.githubusercontent.com/ptr1337/asus-merlin-wrt-docker-builder/master/ac86u.sh
RUN chmod +x ac86u.sh
