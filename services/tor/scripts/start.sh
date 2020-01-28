#!/bin/bash -e

cd "$(dirname "$0")"/..

docker-compose up -d --scale http_proxy=4 --scale socks_proxy=4
