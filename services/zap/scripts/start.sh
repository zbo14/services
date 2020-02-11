#!/bin/bash -e

docker run \
    -i \
    --name zap \
    -p 8080:8080 \
    -p 8090:8090 \
    -u zap \
    owasp/zap2docker-stable \
    zap-webswing.sh
