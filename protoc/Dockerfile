FROM golang:1.10-stretch

WORKDIR /root

COPY install_protoc.sh install_protoc.sh
COPY install_grpc.sh install_grpc.sh

RUN apt-get update && \
    apt-get install -y \
        curl \
        wget \
        unzip && \
    ./install_protoc.sh && \
    ./install_grpc.sh && \
    apt-get remove --purge -y curl && \
    apt-get --purge -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["protoc"]
