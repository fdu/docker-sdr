#!/bin/sh

git clone https://github.com/viraptor/kalibrate-rtl
cd kalibrate-rtl
./bootstrap
./configure
make -j`nproc`
sudo make install
