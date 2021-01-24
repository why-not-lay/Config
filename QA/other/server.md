# server
### servlet container 和 web server 的区别
#### servlet container
容器用于管理servlet的生成,运行,撤销等
#### web server 
web服务器是服务于HTTP的, 服务器根据URL以静态内容作为响应
#### 二者的联系
由于web服务器只能返回静态内容,但对于大多数页面而言,其是动态生成的,为了满足于web服务器的特性,就会有类似servlet,jsp等技术来动态生成静态页面。由于web服务器会同时接受多个请求，这意味着要动态生成多个页面，而对于每个页面的生成都需要实例化servlet，这意味着程序员需要管理各个servlet的生命周期，这无疑是不便的，所以sevlet container 的出现就是为了管理servlet生命周期，大大提高了效率
