#!/bin/bash

# replace default theme to argon
rm -rf feeds/luci/themes/luci-theme-bootstrap/
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci*/Makefile

# Modify DHCP client for iptv
sed -i 's/\${vendorid:+-V "$vendorid"}/-V \"\"/g' package/network/config/netifd/files/lib/netifd/proto/dhcp.sh