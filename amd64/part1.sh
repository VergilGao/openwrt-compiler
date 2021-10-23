#!/bin/bash

# ddns-scripts-dnspod OpenWrt 官方 DDNS 插件的 dnspod 更新脚本
git clone --depth=1 https://github.com/VergilGao/ddns-scripts-dnspod package/ddns-scripts-dnspod

# luci-app-adblock-plus 基于DNS的广告过滤
git clone -b 1.0-8 --depth=1 https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus

# luci-theme-argon
git clone -b v2.2.5 --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# OpenClash
git clone --depth=1 https://github.com/vernesong/OpenClash /tmp/clash
mv /tmp/clash/luci-app-openclash package/luci-app-openclash
