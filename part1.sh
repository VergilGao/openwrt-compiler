#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# luci-theme-argon 主题及其配置页面
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# luci-app-smartdns
git clone -b lede --depth=1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# luci-app-openclash
git clone -b v0.40.7-beta --depth=1 https://github.com/vernesong/OpenClash.git package/OpenClash
mv package/OpenClash/luci-app-openclash package/luci-app-openclash
rm -rf package/OpenClash
