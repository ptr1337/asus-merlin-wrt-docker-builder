#!/bin/bash

cd $HOME
git clone https://github.com/RMerl/am-toolchains
git clone https://github.com/RMerl/asuswrt-merlin.ng

sudo ln -s ~/am-toolchains/brcm-arm-hnd /opt/toolchains
sudo ln -s ~/asuswrt-merlin.ng/tools/brcm /opt/brcm
sudo ln -s ~/asuswrt-merlin.ng/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3 /opt/brcm-arm

sudo ln -sf bash /bin/sh

echo "export LD_LIBRARY_PATH=$LD_LIBRARY:/opt/toolchains/crosstools-arm-gcc-5.3-linux-4.1-glibc-2.22-binutils-2.25/usr/lib" >> ~/.profile

echo "export TOOLCHAIN_BASE=/opt/toolchains" >> ~/.profile

echo "PATH=\$PATH:/opt/toolchains/crosstools-arm-gcc-5.3-linux-4.1-glibc-2.22-binutils-2.25/usr/bin" >> ~/.profile

echo "PATH=\$PATH:/opt/toolchains/crosstools-aarch64-gcc-5.3-linux-4.1-glibc-2.22-binutils-2.25/usr/bin" >> ~/.profile

sudo mkdir -p /media/ASUSWRT/
sudo ln -s ~/asuswrt-merlin.ng /media/ASUSWRT/asuswrt-merlin.ng

cp /usr/include/proxy.h ~/asuswrt-merlin.ng/release/src/router/neon/

cd ~/asuswrt-merlin.ng/release/src/router/libdaemon
alocal

cd ~/asuswrt-merlin.ng/release/src/router/libxml2
sed -i s/AM_C_PROTOTYPES/#AM_C_PROTOTYPES/g ~/asuswrt-merlin.ng/release/src/router/libxml2/configure.in
aclocal


#example for ac86u
#cd ~/asuswrt-merlin.ng/release/src-rt-5.02hnd
#make rt-ac86u
