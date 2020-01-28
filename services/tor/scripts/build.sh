#!/bin/bash -e

cd "$(dirname "$0")"/..

docker-compose build --no-cache --parallel
