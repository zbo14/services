#!/bin/bash -e

cd "$(dirname "$0")"/..

docker build --no-cache -t isc-dhcp-server .
