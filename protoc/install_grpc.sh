#!/usr/bin/env bash

set -e

git clone https://github.com/grpc/grpc-java.git
cd grpc-java/compiler/
../gradlew java_pluginExecutable
../gradlew test

cp build/exe/java_plugin/protoc-gen-grpc-java /usr/bin/protoc-gen-grpc-java

go get -u github.com/golang/protobuf/protoc-gen-go
