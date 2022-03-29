FROM golang:1.17

COPY . /src
WORKDIR /src

RUN apt-get update
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v3.19.4/protoc-3.19.4-linux-x86_64.zip
RUN unzip protoc-3.19.4-linux-x86_64.zip -d $HOME/.local
RUN export PATH="$PATH:$HOME/.local/bin"
