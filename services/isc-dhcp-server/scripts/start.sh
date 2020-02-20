#!/bin/bash -e

dir="$(realpath "$(dirname "$0")"/..)"

docker run \
  -d \
  --init \
  --name isc-dhcp-server \
  --net=host \
  --restart=always \
  -v "$dir"/etc:/etc:ro \
  -v dhcp-leases:/var/lib/dhcp \
  isc-dhcp-server
