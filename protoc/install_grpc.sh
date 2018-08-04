#!/usr/bin/env bash

set -e

sha1="1f3c9e81a7e18d09a837e322443eeafd9a46437a"
version="0.14.1"
file="protoc-gen-grpc-java-${version}-linux-x86_64.exe"

`curl -SL https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/${version}/${file} -o ${file}`

echo "$sha1 ${file}" | sha1sum -c -;
chmod +x $file
cp $file /usr/bin/protoc-gen-grpc-java

go get -u github.com/golang/protobuf/protoc-gen-go

rm $file
