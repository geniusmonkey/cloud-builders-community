#!/usr/bin/env bash

set -e

curl -SL https://github.com/google/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip -o protoc.zip && \
unzip protoc.zip -d /usr

rm protoc.zip