#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup.sh
chmod +x /tmp/rustup.sh
/tmp/rustup.sh -y
. $HOME/.cargo/env
git clone https://github.com/martinber/noaa-apt -b v1.3.0
cd noaa-apt
cargo build --release
#make -j`nproc`
#sudo make install
