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
upper bound是用来寻找第一个大于目标值的元素(上界),大于

### sizeof
用于返回对象或类型的字节大小  
**注意:**  
* 数组作为函数参数问题
> 由于`sizeof(*ptr)`会返回4或者8(这个由计算机决定),所以当在函数中时候,`sizeof( <function arguments>)`的时候需要注意,如果传入的参数为数组的时候,传参的时候会默认把参数识别为指针类型,这时候并不会返回数组的字节数
* sizeof 和 strlen区别
> 首先 sizeof适用于所有类型,而strlen是适用于字符串(char*) , 其次sizeof返回的是该字符串的长度+1,因为字符串的最后一个字符`'\0'`也会被计算在内,而strlen只会计算到`'\0'`前的一个字符,是真正意义上的字符串长度
