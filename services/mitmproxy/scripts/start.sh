#!/bin/bash -e

dir="$(realpath "$(dirname "$0")"/..)"

docker run \
    -it \
    --name mitmproxy \
    -p 8080:8080 \
    --rm \
    -v "$dir"/.mitmproxy:/home/mitmproxy/.mitmproxy \
    mitmproxy/mitmproxy
