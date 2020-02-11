# unbound

This service runs an [Unbound](https://www.nlnetlabs.nl/projects/unbound/about/) DNS server on port 53 (UDP).

By default, the DNS server forwards queries over TLS to [Quad9](https://www.quad9.net/) and [Cloudflare](https://www.cloudflare.com/) but you may configure the server differently if you feel so inclined.

## Usage

### Build

`$ sh scripts/build.sh`

Build the Docker image for the Unbound DNS server.

### Start

`$ sh scripts/start.sh`

Start a container running the Unbound DNS server.

### Stop

`$ sh scripts/stop.sh`

Stop the container, remove it and the config volume.

## Config

### Unbound

The config file is located at `./etc/unbound/unbound.conf`.

If you wish to modify the file, please refer to the [docs](https://nlnetlabs.nl/documentation/unbound/unbound.conf/).
