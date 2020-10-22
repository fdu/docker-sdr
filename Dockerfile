FROM debian:buster

ENV USER deb
ENV UID 1000
ENV GID 1000
ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt install -y \
	nano sudo build-essential git libtool cmake python3-pip \
	libpulse-dev librtlsdr-dev libssl-dev libcairo2-dev libpango1.0-dev libatk1.0-dev libgdk-pixbuf2.0-dev libgtk-3-dev \
	qt5-qmake qt5-default libqt5webkit5-dev libqwt-qt5-dev libqt5svg5-dev qtmultimedia5-dev \
	gqrx-sdr rtl-sdr pavucontrol fldigi dump1090-mutability direwolf qsstv multimon hamfax
RUN echo '%sudo ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN groupadd --gid $GID $USER
RUN useradd -rm -d /home/$USER -s /bin/bash -g $USER -G sudo -u $UID $USER

USER deb
WORKDIR /home/$USER
RUN mkdir .config

COPY scripts scripts
RUN ./scripts/build/librtlsdr.sh
RUN ./scripts/build/dream.sh
RUN ./scripts/build/rtl-ais.sh
RUN ./scripts/build/kalibrate-rtl.sh
RUN ./scripts/build/qtmm.sh
RUN ./scripts/build/noaa-apt.sh
RUN ./scripts/build/gridtracker.sh

