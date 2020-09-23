# 自动构建斐讯 K2P/N1 OpenWrt 固件脚本
# Automatically Build OpenWrt Firmware for PHICOMM K2P/N1

**每周六早上六点自动通过 Github Actions 进行云编译，并发布为当日日期版本**

![K2P Build](https://github.com/ylqjgm/OpenWrt-Actions/workflows/K2P%20Build/badge.svg)
![N1 Build](https://github.com/ylqjgm/OpenWrt-Actions/workflows/N1%20Build/badge.svg)

## 使用方法

1. 将本项目 **Fork** 到自己帐号
2. 编辑 **config** 和 **shell** 目录下的文件，更改为自己所需
3. 提交更新或点击 **Star** 都将触发固件编译
4. 编译前会创建一个当日日期的 **tag**
5. 编译完成后会将固件及ipk文件打包为 **K2P.tar.gz** 及 **N1.tar.gz** 进行发布
6. **N1** 固件写入 **emmc** 直接执行 `n1-install`，若更新固件则上传至 **/tmp/upgrade/** 目录后执行 `n1-update`

### K2P配置

1. 登录地址：192.168.1.2
2. 登录帐号：root

### N1配置

1. 登录地址：192.168.1.3
2. 登录帐号：root

## 包含插件

### K2P插件

1. arpbind
2. autoreboot
3. ddns
4. flowoffload
5. mtwifi
6. ramfree
7. upnp

### N1插件

1. adbyby-plus
2. aria2
3. autoreboot
3. baidupcs-web
4. cifs-mount
5. cifsd
6. docker
7. filebrowser
8. filetransfer
8. flowoffload
9. netdata
10. nfs
11. passwall
12. samba
13. samba4
14. sfe
14. ssr-plus
15. unblockmusic
16. upnp
17. vlmcsd
18. vsftpd
15. zerotier

## 特别说明

1. 源码使用 [https://github.com/coolsnowwolf/lede.git](https://github.com/coolsnowwolf/lede.git)
2. 插件使用 [https://github.com/xiaorouji/openwrt-package.git](https://github.com/xiaorouji/openwrt-package.git)
3. N1打包使用 [https://github.com/tuanqing/mknop.git](https://github.com/tuanqing/mknop.git)
4. emmc写入使用 [https://github.com/tuanqing/install-program.git](https://github.com/tuanqing/install-program.git)