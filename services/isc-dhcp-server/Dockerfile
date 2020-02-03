FROM debian:buster

COPY . /

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y isc-dhcp-server

ENTRYPOINT sh entrypoint.sh
