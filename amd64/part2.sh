#!/bin/bash

# Modify DHCP client for iptv
sed -i 's/\${vendorid:+-V "$vendorid"}/-V \"\"/g' package/network/config/netifd/files/lib/netifd/proto/dhcp.sh