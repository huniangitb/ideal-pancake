云编译7981固件
（p3terx 2024新版 基于ubuntu22.04）

360T7主路由固件，含插件DDNS, PASSWALL（用最新源码编译）。

JCG Q30 PRO极简AP固件。


237大佬源码网址:
[https://github.com/padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10)


passwall最新源码网址：
https://github.com/xiaorouji/openwrt-passwall


ssr plus最新源码网址：
https://github.com/fw876/helloworld


使用p3terx云编译模板
**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

----------------------------------------------------------------
config配置文件，建议采用本地生成。可装linux或者Windows下装wsl，按照官方编译步骤操作。

要使用passwall最新源码，需要更改feeds.conf.default，文件开始处插入：

```
src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main
src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main
```

----------------------------------------------------------------
注意，新建的repositories ，要修改权限（原来只读，改成读写权限）。

Settings，Actions，General，右侧栏拉到最下面，	Workflow permissions，勾选 Read and write permissions

----------------------------------------------------------------
更新刷写固件时，跨版本更新的，记得不要保存设置。

刷写完新固件后，记得先清理浏览器缓存，再访问路由器进行设置。
