# network
### 同源政策(same-origin policy)
##### 什么是同源
同源：协议相同，域名相同，端口相同
##### 用处
是为了保证用户信息的安全，防止恶意网站窃取数据
> cookie

对于非同源，以下三种行为受到限制：
* Cookie、LocalStorage和IndexDB无法读取
* DOM无法获取(iframe)
* AJAX请求不能发送
#### 限制规避(跨域方式)
##### Cookie
浏览器可以设置`document.domain`的值为当前域的父域，这样同一父域下的域名就能够共享cookie，这种方法仅适用于cookie和iframe窗口
> 子域和父域`document.domain`要设置成相同的值
##### iframe
对于同一父域下的规避可以利用设置`document.domain`

对于完全不同源的网站，具有以下三种方法解决跨窗口通信：  
* 片段标识符(fragment identifier)：利用片段标识符改变但页面并不会刷新的机制进行信息传递
  > 片段标识符：URL 的`#`后面的部分，
* window.name：利用同一窗口内`window.name`共享的特点，进行不同源页面信息传递
* 跨文档通信API(Cross-document messaging)：利用HTML5新增的`window.postMessage`API进行跨窗口通信，无论这两个窗口是否同源

##### AJAX
JSONP：网页通过添加一个`<script>`元素，向服务器请求JSON数据；在服务器收到请求后，将数据放在一个指定名字的回调函数传回来
* 原理：利用`src`属性可以跨域，并且`<script>`标签是可运行的js代码，所以当服务端返回`callback(data)`形式的时候，网页就会以data为参数，调用callback方法。
> 为了让服务端知道回调函数名，所以发送请求时添加参数`callback=<function name>`
* 只能发送GET请求

WebSocket通信协议：利用`ws://`或`wss://`作为协议前缀发送请求

CORS方法



### 跨域资源共享(CORS)
#### 是什么(什么用)
允许浏览器向跨源服务器发出`XMLHttpRequest`请求，从而克服了AJAX只能同源使用的限制。浏览器一旦发现AJAX请求跨源，就会自动添加一些附加的头信息。
> 需要浏览器和服务器同时支持
#### 两种请求
##### 简单请求
满足如下条件：  
请求方法是三种方法之一：HEAD、GET和POST

HTTP头部信息不超出以下字段：
* Accept
* Accept-Language
* Content-Language
* Last-Event-ID
* Content-Type: application/x-www.form-urlencoded、multipart/form-data、text/plain之一

简单流程：
* 在浏览器发送CORS请求时，会在头部添加`Origin`字段
> `Origin`字段是说明本次请求来自于哪个源，服务器可以根据该字段决定是否同意这次请求
* 如果`Origin`不在许可范围内，服务器会返回一个正常的HTTP回应，但回应的报文头部不会包含`Access-Control-Allow-Origin`字段。当浏览器接收到该报文会抛出错误(会被`XMLHttpRequest的onerror`捕获)
> 错误无法通过状态识别码识别，HTTP回应的状态码可能是200
* 如果许可，返回的报文会有以`Access-Control`开头的字段
    * Access-Control-Allow-Origin字段
      > 必须，值与`Origin`字段的相同或为`*`(代表接受任意域名)
    * Access-Control-Allow-Credentials字段
      > 可选，布尔值，表示是否发送Cookies

发送Cookie条件
* 服务端的返回字段`Access-Control-Allow-Credentials`为true
* 客户端的`XMLHttpRequest`对象的`withCredentials`属性为true
* `Access-Control-Allow-Origin`指明请求网页一致的域名
> cookie同源策略
##### 非简单请求
针对`PUT`或`DELETE`，或`Content-Type`字段为`application/json`

预检请求  
在正式发送请求之前会进行预检请求(http查询请求)，用于询问服务端当前域名是否可行，以及哪些可以使用的HTTP动词和头信息字段，如果没有肯定答复则报错
* 请求的报文包括如下字段
    * 请求行的方法为`OPTIONS`
    * `Origin`
    * `Access-Control-Request-Method`
      > 必须，列出浏览器的CORS请求会用到哪些方法
    * `Access-Control-Request-Headers`
      > 该字段是逗号分隔符的字符串，指定浏览器CORS请求会额外发送的头部字段
* 回应的报文
    * `Access-Control-Allow-Origin`
    * `Access-Control-Allow-Method`
    * `Access-Control-Allow-Headers`

在预检请求后就进行正常的请求



### web安全问题
#### XSS（跨站脚本攻击）
##### 是什么
它允许而已web用户将代码植入到提供给其他用户使用的页面中，攻击者通过注入非法html标签或者js代码，从而使得当前用户浏览页面时控制用户浏览器
##### 类别
DOM型xss

反射型xss(非持久性xss)
> 出现在URL中，通过引诱用户点击一个链接到目标网站的恶意链接来实施攻击

存储型xss(持久型xss)
> 当用户提交一段xss代码后，被服务端接受并存储，当所有浏览者访问某个页面时都会被css

##### 解决方法
* 过滤掉用户输入的`<>` `''` `""`等字符进行转义，移除用户输入的Style节点，Script节点，Iframe节点
* httpOnly
> cookies

### Web Storage
##### 是什么
浏览器以一种比使用Cookie更直观的方式存储键/值对
#### 两种机制
##### sessionStorage
为每一个给定的源维持一个独立的存储区域，该存储区域在页面会话期间可用
> 只要浏览器处于打开状态
##### localStorage
类似sessionStorage，并且在浏览器关闭后，然后重新打开数据仍然存在


### IndexedDB
##### 是什么
* IndexedDB 用于在客户端存储大量的结构化数据，它使用索引实现对数据的高性能搜索。  

* IndexedDB 是一个事务型数据库系统，类似于基于SQL的RDBMS，但不想RDBMS那样使用固定列表，它是一个基于JS的面向对象数据库。IndexedDB允许存储和使用用键索引的对象，可以存储结构化克隆算法支持的任何对象

* IndexedDB 执行的操作是异步操作的。

