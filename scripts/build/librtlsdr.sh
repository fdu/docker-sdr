#!/bin/sh

git clone https://github.com/librtlsdr/librtlsdr -b v0.8.0
mkdir librtlsdr/build
cd librtlsdr/build
cmake ..
make -j`nproc`
sudo make install
