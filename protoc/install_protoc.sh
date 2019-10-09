#!/usr/bin/env bash

set -e

git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf
git checkout v3.10.0

git submodule update --init --recursive
./autogen.sh
./configure --disable-debug --disable-dependency-tracking

make
make check
make install
ldconfig