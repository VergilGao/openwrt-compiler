# amd64

此固件用于我个人家中的主路由。

目标平台: x86_64
镜像配置：

- squashfs 防止意外断电引发文件系统错误，路由器固件损坏
- efi 增加开机启动速度
- 64MB 内核分区，640M 根目录分区
- 额外编译了 VirtualBox 可以使用的镜像，方便使用虚拟机测试

编译选项：

- 使用 dnsmasq-full 替代 dnsmasq

内置软件：

- htop 用于监控系统资源占用
- unzip 常用的解压工具
- igmpproxy igmp代理
- nano 更友好的文本编辑器
- zsh 比bash更强大的终端
- zoneinfo-all
- byobu(tmux后端)
- cfdisk 世界上最好用的磁盘分区工具

Luci 配置：

- nginx-ssl 后端
- luci-theme-argon 主题
- 简体中文支持

Luci 插件：

- luci-app-acme 获取ssl证书
- luci-app-adblock-plus 广告过滤
- luci-app-ddns ddns插件，附带了 dnspod 支持
- luci-app-mwan3 负载均衡，用于iptv
- luci-app-openclash clash，懂的都得
- luci-app-smartdns dns 选优及防污染
- luci-app-udpxy iptv用
- luci-app-upnp upnp
- luci-app-wol 网络唤醒

其他：

- dhcp 删除了 vendorid 支持，从而使得可以通过iptv验证。
