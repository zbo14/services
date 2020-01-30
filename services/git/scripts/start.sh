#!/bin/bash -e

dir="$(realpath "$(dirname "$0")"/..)"

docker run \
    --init \
    --name git \
    -p 22:22 \
    --restart=always \
    -v "$dir"/etc/ssh:/etc/ssh:ro \
    -v "$dir"/projects:/home/git/projects \
    -v "$dir"/.ssh:/home/git/.ssh:ro \
    git
