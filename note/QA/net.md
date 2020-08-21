# 网络设置(ubuntu)

## 静态ip设置
1. 打开/etc/netplan/目录下yaml后缀文件
2. 格式如下:
~~~
network:
  version: 2
  renderer: networkd

  ethernets:
    enp2s0:  #网卡
      #关闭dhcp
      dhcp4: no 
      dhcp6: no 
      #设置静态ip以及子网掩码
      addresses: 
        - 125.216.246.219/24
      #设置网关
      gateway4: 125.216.246.254
      #设置DNS
      nameservers:
        search: [mydomain, otherdomain]
        addresses: [222.201.130.30, 222.201.130.33]

~~~
3. netplan apply (需要权限)
3. 详情链接[netplan](https://netplan.io/examples/)

## 查看网卡
* ifconfig指令

### 打开热点(18.04)
1. 命令
~~~
nm-connection-editor
~~~
2. +号添加wifi热点
3. 详情链接[hotpot](https://www.jianshu.com/p/5a6917148c1c)


