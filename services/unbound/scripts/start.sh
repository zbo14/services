#!/bin/bash -e

dir="$(realpath "$(dirname "$0")"/..)"

docker run \
    -d \
    --init \
    --name unbound \
    -p 53:53/udp \
    --restart=always \
    -v "$dir"/etc/unbound:/etc/unbound:ro \
    unbound
