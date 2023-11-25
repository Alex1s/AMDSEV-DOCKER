#!/usr/bin/env bash
cd /AMDSEV-DOCKER

# will fail if directory already exists which is perfect
git clone --branch snp-latest https://github.com/AMDESE/AMDSEV.git

cd AMDSEV
./build.sh $@
