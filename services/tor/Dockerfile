FROM debian:buster

COPY . /

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y tor

ENTRYPOINT sh entrypoint.sh
