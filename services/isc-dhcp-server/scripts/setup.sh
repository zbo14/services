#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: setup <iface>"
  exit 1
fi

cd "$(dirname "$0")"/..

echo "INTERFACES=\"$1\"" > ./etc/default/isc-dhcp-server

sudo ip a flush dev "$1"
sudo ip a add 192.168.1.2/24 dev "$1"

sudo ip r del default > /dev/null 2>&1
sudo ip r add default via 192.168.1.1
