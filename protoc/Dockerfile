FROM golang:1.13-buster

WORKDIR /root

COPY install_protoc.sh install_protoc.sh
COPY install_grpc.sh install_grpc.sh

RUN apt-get update && \
    apt-get install -y \
        curl vim wget unzip gradle autoconf automake libtool make g++ unzip && \
        ./install_protoc.sh && \
        ./install_grpc.sh && \
        go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc && \
        apt-get remove --purge -y curl vim wget unzip gradle autoconf automake libtool make g++ unzip && \
        apt-get --purge -y autoremove && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        rm -rf /root/grpc-java && \
        rm -rf /root/protobuf

ENTRYPOINT ["protoc"]
