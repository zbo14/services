FROM debian:buster

COPY . /

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y dnsmasq tor

ENTRYPOINT sh dns.entrypoint.sh
