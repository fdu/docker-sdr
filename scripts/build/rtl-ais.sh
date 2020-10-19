#!/bin/sh

git clone https://github.com/dgiardini/rtl-ais
cd rtl-ais
make -j`nproc`
sudo make install
sudo pip3 install libais
