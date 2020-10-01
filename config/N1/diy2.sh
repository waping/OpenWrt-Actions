#!/bin/bash

# 替换默认IP
sed -i 's#192.168.1.1#192.168.1.3#g' package/base-files/files/bin/config_generate
# 替换默认主题
sed -i 's#luci-theme-bootstrap#luci-theme-rosy#g' feeds/luci/collections/luci/Makefile

# 更新GoLang到1.15.2
sed -i 's#GO_VERSION_MAJOR_MINOR:=1.14#GO_VERSION_MAJOR_MINOR:=1.15#g' feeds/packages/lang/golang/golang/Makefile
sed -i 's#GO_VERSION_PATCH:=4#GO_VERSION_PATCH:=2#g' feeds/packages/lang/golang/golang/Makefile
sed -i 's#PKG_HASH:=7011af3bbc2ac108d1b82ea8abb87b2e63f78844f0259be20cde4d42c5c40584#PKG_HASH:=28bf9d0bcde251011caae230a4a05d917b172ea203f2a62f2c2f9533589d4b4d#g' feeds/packages/lang/golang/golang/Makefile

# 更新V2Ray到2.29.0
sed -i 's#PKG_VERSION:=4.28.2#PKG_VERSION:=4.29.0#g' package/lean/v2ray/Makefile
sed -i 's#PKG_HASH:=e78446333fd28ef8a3ec2c25612458bfc024a226008888ed5277201136f4ca97#PKG_HASH:=cc8cb22b616c218a6de9de0bee80651f502344a907b696008ae7bd467ba05a17#g' package/lean/v2ray/Makefile
sed -i 's#https://github.com/v2ray#https://github.com/v2fly#g' package/lean/v2ray/Makefile