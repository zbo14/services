FROM debian:buster

COPY . /

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git openssh-server && \
    adduser --disabled-password git

ENTRYPOINT sh entrypoint.sh
