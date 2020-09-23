#!/bin/bash

# 替换默认IP
sed -i 's#192.168.1.1#192.168.1.3#g' package/base-files/files/bin/config_generate
# 替换默认主题
sed -i 's#luci-theme-bootstrap#luci-theme-rosy#g' feeds/luci/collections/luci/Makefile

# V2Ray 4.28.2修复
sed -i 's#PKG_HASH:=e5d6603454622e1f466c4c20061992046124fc7c#PKG_HASH:=e78446333fd28ef8a3ec2c25612458bfc024a226008888ed5277201136f4ca97#g' package/lean/v2ray/Makefile