#!/bin/bash -e

touch /var/lib/dhcp/dhcpd.leases
dhcpd -f
