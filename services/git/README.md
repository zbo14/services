# git

This service runs a git server, i.e. an SSH server with git installed.

This is useful if you'd like to host repositories on a private network or from an address/hostname you own.

[Here's](https://zachh.me/blog/passing-passwords-to-myself) a writeup describing a use case for an encrypted password store.

## Usage

### Build

`$ sh scripts/build.sh`

Build the Docker image for the SSH server.

### Init

`$ sh scripts/init.sh`

Generate keys for the SSH server, create the `./.ssh` and `./projects` directories, and set the appropriate permissions.

### Start

`$ sh scripts/start.sh`

Start a container running the SSH server.

### Stop

`$ sh scripts/stop.sh`

Stop the container, remove it and its unnamed volumes.

## Config

The `./etc/ssh` directory contains the SSH daemon config and the (gitignored) server keys. If you'd like to modify daemon configuration, please refer to [this manpage](https://linux.die.net/man/5/sshd_config) or other appropriate documentation.

The `./projects` directory contains the remote repositories clients push to/pull from.

The `./.ssh` directory holds an `authorized_keys` file - each client's public key should be added to this file.
