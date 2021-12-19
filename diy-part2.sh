#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#=================================================
# 增加插件包
git clone https://github.com/siwind/luci-app-wolplus.git package/lean/luci-app-wolplus
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
#=================================================
# 清除旧版
# 删除
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-jd-dailybonus
#=================================================
# 拉取
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
