# html

### 页面渲染
#### 大致过程
1. 输入URL
2. DNS查找
3. TCP连接(和TLS协商)
4. 服务端响应
5. 解析网页
6. 渲染页面
7. 交互
#### 详细过程
##### DNS查找 
浏览器将域名发送给DNS服务器，DNS返回ip地址
##### TCP连接(和TLS协商)
三次握手
> "SYN-> SYN-ACK -> ACK"

如果是https协议还会进行TLS协商，用对称加密来加密数据，用非对称加密来加密密钥，大致过程如下：
* Client 发起https请求，Server把公钥证书返回给客户端
* Client 验证公钥证书
* Client 使用伪随机数生成器生成机密使用的对称密钥，然后用公钥加密该密钥，发送给Server
* Server用私钥机密得到对称密钥，这一步双方都获得相同的对称密钥
* Server利用对称密钥加密数据，client利用对称密钥解密

SSL四次握手
* ClientHello
  > 用户发起加密通信请求
  * 支持的协议版本
  * Client生成的随机数，随后用于生成对话密钥
  * 支持的加密算法
  * 支持的压缩方法
* ServerHello
  > 服务器回应
  * 确认加密通信协议
  * 服务器生成的随机数，之后用于用户生成对话密钥
  * 确认加密算法
  * 服务器证书
* 客户端响应(client finish)
* 服务器响应(server finish)
##### 服务端响应
在浏览器发送http/https 请求后，服务器作出响应，返回请求资源

TCP慢开始/14kb规则  
> TCP的慢开始（慢启动）的初始包为14kb，之后的包逐个加倍直至到达阈值或遇到拥塞

##### 解析网页
浏览器将接受的数据转为DOM和CSSOM步骤

* 构建DOM树
  1. 处理HTML标记构造DOM树，`<html>`元素是DOM树的根节点，DOM节点越多，构建树的时间就越长。
    > 在解析的过程中如果遇到非阻塞资源(例如图片)或CSS文件时，解析仍可以继续进行，但遇到`<script>`标签时，解析器会停止。
    * 预加载扫描器
      > 解析可用的内容并请求高优先资源，如CSS，JS等
  2. 构建CSSOM树，浏览器将CSS规则转换为可以理解和使用的样式映射
  3. JS编译，构建辅助功能树等其他过程
##### 渲染页面
* 计算样式(style)：将DOM和CSSOM组成成一个Render树，计算渲染树从DOM树的根开始构建，遍历每个可见节点
* 布局(Layout)：在render树上运行布局以计算每个节点的几何体。该过程是确定呈现树中所有节点的宽度，高度和位置，以及确定页面上每个对象大小和位置。
  > 回流是对页面的任何部分或整个文档的任何后续大小和位置的确定
* 绘制(paint)：将各个节点绘制到屏幕上，该过程将布局阶段计算的每个框转为屏幕上的像素
  > 绘制将布局上的元素分解为多个层，利用GPU绘制

##### 回流(reflow)和重绘(repaint)
回流：当渲染树中部分或全部元素的尺寸、结构、或某些属性发生改变时，服务器重新渲染部分或全部文档的过程。导致该过程的操作：
* 页面的首次渲染
* 浏览器窗口大小发生改变
* 元素的尺寸或位置发生改变
* 元素字体大小变化
* 添加或者删除可见的DOM元素
* 激活CSS伪类
* 元素内容变化

重绘：当页面中元素样式改变并不影响它在文档流中的位置时，浏览器会将新样式赋予给元素并重新绘制它

### 块级元素和行内元素嵌套规则
1. 块级元素可以包含行内元素或块元素，但内联元素不能包含块元素，只能包含其他内敛元素
2. 块级元素不能放在`<p>`内
3. 有几个特别的块级元素只能包含行内元素，不能再包含块级元素
    * `<dt>`
    * 段落元素：`<p>`
    * 标题元素：`<h1>,<h2> ...`
4. 块级元素和块级元素并列，行内元素和行内元素并列
