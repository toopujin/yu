#!/bin/bash

# 修改默认 IP 地址
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 拉取 PassWall 插件（如果 feed 不包含）
rm -rf package/passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git -b luci package/passwall
