# isc-dhcp-server

This service runs a DHCP server on the host's network.

## Usage

### Build

`$ sh scripts/build.sh`

Build the Docker image for the DHCP server.

### Setup

`$ sh scripts/setup.sh <iface>`

Set the static IPv4 address and default route for the network interface.

### Start

`$ sh scripts/start.sh`

Start a container running the DHCP server.

This creates volumes for the `./etc` and `./var/lib/dhcp` directories if the volumes don't already exist.

**Note:** `./var/lib/dhcp` holds DHCP leases.

### Stop

`$ sh scripts/stop.sh`

Stop the Docker container, remove it and its volumes.

## Config

### isc-dhcp-server

Find the config file at `./etc/default/isc-dhcp-server`.

`INTERFACES` should be the network interface that connects your device to the local network (e.g. `eth0`).

The [setup script](#setup) configures this value for you, but you can change it manually.

### dhcpd

The file `./etc/dhcp/dhcpd.conf` contains configuration for [dhcpd](https://linux.die.net/man/8/dhcpd).

The default subnet is "192.168.1.0/24". The address of the interface on *this* device is "192.168.1.2" (configured during [setup](#setup)). *Other* devices on the subnet will use addresses in the range "192.168.1.3" -> "192.168.1.254".

The DNS nameserver defaults to "192.168.1.1", presumably the gateway/router.
