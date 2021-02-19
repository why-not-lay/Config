#com

### apt和apt-get的区别
apt的命令和apt-get类似,但apt并没有向后兼容apt-get

[apt和apt-get区别](https://juejin.im/post/6844903939087810567)

### uniq去重
单纯用uniq并不能直接去重,需要和sort搭配使用
> 因为uniq指令是对邻近的重复行合并

### base64
基于64个可打印字符来表示二进制数据的方法,每个单元6 bits  
一般用于处理文本数据的场合,用于表示,传输,存储一些二进制数据

### hex dump
从内存或其他设备,二进制文件中进行十六进制转储
> 可利用xxd转换成二进制文件

### xrandr
用于设置屏幕大小、方向、镜像等

`xrandr`：查看输出屏幕情况

`xrandr --output eDP-1-1 --off`：关闭指定屏幕

`xrandr --output eDP-1-1 --left-of/--right-of/--above/--below/--same-as HDMI-0`：拓展

> HDMI-0, eDP-1-1

