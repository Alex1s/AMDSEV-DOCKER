#!/usr/bin/env bash
set -x

docker run --rm --volume /boot/config-`uname -r`:/boot/config-`uname -r`:ro --volume ./:/AMDSEV-DOCKER -e OUTSIDE_UID="$UID" -e OUTSIDE_USER="$USER" -t `docker build -q .` $@
