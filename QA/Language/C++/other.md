# C++
### gcc编译c++文件
利用-o 编译成目标文件  
利用-lstdc++ 选项或者g++命令链接(这是因为gcc是不会自动c++程序的库)

### gdb调试
-c 的时候要添加-g参数
### [编译步骤](http://www.ruanyifeng.com/blog/2014/11/compiler.html)
  1. 配置(configure)
  2. 确定标准库和头文件位置
  3. 确定依赖关系
  4. 头文件的预编译(precompilation)
    > 编译源码之前,先编译头文件,保证了头文件只编译一次.  
    > 并非头文件所有的内容都会被预编译,用来声明宏#define命令的是不会被预编译
  5. 预处理(preprocessing)
    > 替换源码中的头文件和宏
  6.编译(compilation)
    > 生成机器码  
    > 转码后的文件称为对象文件(object file),此时还未能执行
  7. 连接(Linking)
    > 把外部函数的代码添加到可执行文件(在内存中)中(静态连接)  
    > 动态连接
  8. 安装(Installation)
    > 将内存的可执行文件保存到用户事先指定的目录
  9. 操作系统连接
  10. 生成安装包
  11. 动态连接(Dynamic linking)
    > 只在运行时候连接  
    > Linux-- *.so /  Windows-- *.dll / Mac-- *.dylib
  
### lower bound 和upper bound的区别
lower bound是用来寻找第一个元素大于或等于目标值(下界),大于等于  
upper bound是用来寻找上界,小于
