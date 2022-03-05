# amd64

此固件用于我个人家中的主路由。

## 目标平台

x86_64

## 镜像配置

- squashfs 防止意外断电引发文件系统错误，路由器固件损坏
- efi 增加开机启动速度
- 64MB 内核分区，640M 根目录分区
- 额外编译了 VirtualBox 可以使用的镜像，方便使用虚拟机测试

## 编译选项

- 使用 dnsmasq-full 替代 dnsmasq

## 内置软件

- htop 用于监控系统资源占用
- unzip 常用的解压工具
- nano 更友好的文本编辑器
- zoneinfo-all
- cfdisk 世界上最好用的磁盘分区工具

## Luci 配置

- nginx-ssl 后端，启用了全部模块
- luci-theme-argon 主题，以及其配置插件
- luci-theme-openwrt-2020 主题，作为备用
- 简体中文支持

## Luci 插件

- luci-app-acme 获取ssl证书
- luci-app-adblock-plus 广告过滤
- luci-app-ddns ddns插件，附带了 dnspod 支持
- luci-app-mwan3 负载均衡，用于iptv
- luci-app-omcproxy omcproxy代理，用于iptv组播
- luci-app-openvpn 回家用
- luci-app-shairplay airplay
- luci-app-smartdns smartdns
- luci-app-udpxy iptv用
- luci-app-upnp upnp
- luci-app-uugamebooster 网易UU加速器
- luci-app-vssr vssr

## 其他

- dhcp 删除了 vendorid 支持，从而使得可以通过iptv验证。
- 内置usb声卡驱动
