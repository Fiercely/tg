#!/usr/bin/env bash
#This Script will build the debian package with only binary files according to the architecture of the machinerunning this Script
#and compiling it, resulting in:
#telegram_cli_xxx_$ARCH.deb
#Installing build dependencies 
apt-get update
apt-get -y install build-essential debhelper autotools-dev autoconf-archive libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson-dev libpython-dev make 
#Building package
dpkg-buildpackage -b -rfakeroot -us -uc 


