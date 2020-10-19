#!/bin/sh

curl -O https://deac-fra.dl.sourceforge.net/project/drm/dream/2.1.1/dream-2.1.1-svn808.tar.gz
tar zxvf dream-2.1.1-svn808.tar.gz
cd dream
qmake
sed -i "s/\s-lqwt\s/ /" Makefile
make -j`nproc`
sudo make install
