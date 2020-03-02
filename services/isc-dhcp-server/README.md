# isc-dhcp-server

This service runs a DHCP server on the host's network.

## Usage

### Build

`$ sh scripts/build.sh`

Build the Docker image for the DHCP server.

### Start

`$ sh scripts/start.sh`

Start a container running the DHCP server.

This creates volumes for the `./etc` and `./var/lib/dhcp` directories if the volumes don't already exist.

**Note:** `./var/lib/dhcp` holds DHCP leases.

### Stop

`$ sh scripts/stop.sh`

Stop/remove the Docker container running the DHCP server.

## Config

### isc-dhcp-server

Find the config file at `./etc/default/isc-dhcp-server`.

You should set `INTERFACES` to the network interface that connects your device to the local network (e.g. `eth0`).

### dhcpd

The file `./etc/dhcp/dhcpd.conf` contains configuration for [dhcpd](https://linux.die.net/man/8/dhcpd).

The default subnet is "192.168.1.0/24" and *other* devices on the subnet will use addresses in the range "192.168.1.3" -> "192.168.1.254".

You may change this subnet or add other subnets.

### DNS

The nameservers are defined in `./etc/resolv.conf` and also specified in `./etc/dhcp/dhcpd.conf`.

By default, these are Google DNS (i.e. "8.8.8.8" and "8.8.4.4") but you can use other servers if you choose.

### interfaces

`./etc/network/interfaces` assigns a static IP address to the DHCP server on the device's network interface.

By default, the static IP is "192.168.1.2" but this value may be modified.

Make sure the interface matches the one you specified in `./etc/default/isc-dhcp-server`.
