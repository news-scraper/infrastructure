#!/bin/bash

set -ex

# allow processes to bind to the non-local address
# necessary for nginx in Amazon EC2
echo "net.ipv4.ip_nonlocal_bind = 1" | cat - /etc/sysctl.conf > /tmp/out && mv /tmp/out /etc/sysctl.conf
sysctl -p /etc/sysctl.conf
