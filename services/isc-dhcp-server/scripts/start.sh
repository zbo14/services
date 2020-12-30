#!/bin/bash

dir="$(realpath "$(dirname "$0")"/..)"

docker run \
  -d \
  --init \
  --name isc-dhcp-server \
  --net=host \
  --restart=always \
  -v "$dir"/etc/default:/etc/default:ro \
  -v "$dir"/etc/dhcp:/etc/dhcp:ro \
  -v "$dir"/var/lib/dhcp:/var/lib/dhcp \
  isc-dhcp-server
