#!/bin/bash

cd "$(dirname "$0")"/..

echo "Stopping application"

docker-compose down --remove-orphans
