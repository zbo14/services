#!/bin/bash -e

cd "$(dirname "$0")"/..

docker-compose down --remove-orphans -v
