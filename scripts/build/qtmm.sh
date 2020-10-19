#!/bin/sh

git clone https://github.com/csete/qtmm
cd qtmm
git reset --hard bd7e0b5e3def869a996ef4c8f872d934f3994ef2
qmake
make -j`nproc`
sudo make install
