FROM debian:buster

COPY . /

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates unbound

ENTRYPOINT sh entrypoint.sh
