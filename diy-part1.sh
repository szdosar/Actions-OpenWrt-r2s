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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i -E 's/#(src-git.+)(helloworld.+)/\1\2/' feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git openappfilter https://github.com/szdosar/OpenAppFilter' feeds.conf.default
# rm feeds.conf.default
# cat > feeds.conf.default <<EOF
# src-git packages https://github.com/coolsnowwolf/packages^d398651
# src-git luci https://github.com/coolsnowwolf/luci^160352f
# src-git routing https://git.openwrt.org/feed/routing.git
# src-git telephony https://git.openwrt.org/feed/telephony.git
# src-git lienol https://github.com/Lienol/openwrt-package
# src-git helloworld https://github.com/fw876/helloworld.git
# src-git kenzo https://github.com/kenzok8/openwrt-packages
# src-git small https://github.com/kenzok8/small
# 
# EOF

