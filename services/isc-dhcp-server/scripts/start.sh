#!/bin/bash -e

dir="$(realpath "$(dirname "$0")"/..)"

docker run \
  -d \
  --init \
  --name isc-dhcp-server \
  -p 67:67/udp \
  --restart=always \
  -v "$dir"/etc/default:/etc/default:ro \
  -v "$dir"/etc/dhcp:/etc/dhcp:ro \
  isc-dhcp-server
