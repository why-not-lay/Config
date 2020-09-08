# compile

#### 单个文件
~~~java
javac -d . <filename>
java <class>
~~~
> javac 为编译命令,-d选项用于给classfile设置目标目录, `.`代表当前目录  
> java后的参数应为入口class,即定义main方法对应的类,如果添加了package需要在class前添加前缀

#### 多个文件

