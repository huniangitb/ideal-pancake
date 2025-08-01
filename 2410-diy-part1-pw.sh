#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i '1i src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '2i src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' feeds.conf.default
echo >> feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
    # feeds获取源码：
echo 'src-git taskplan  https://github.com/sirpdboy/luci-app-taskplan' >> feeds.conf.default
