#!/usr/bin/env bash
#This Script will build the debian package with only binary files according to the architecture of the machinerunning this Script
#and compiling it, resulting in:
#telegram_cli_xxx_$ARCH.deb
dpkg-buildpackage -b -rfakeroot -us -uc

