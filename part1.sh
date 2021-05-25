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

# luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

# 京东签到
git clone -b v1.0.5 --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus

# dockerman
git clone -b v0.5.13 --depth=1 https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
