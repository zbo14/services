#!/bin/bash -e

touch /var/lib/dhcp/dhcpd.leases
dhcpd -4 -d
