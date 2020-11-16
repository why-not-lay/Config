# http
### 1. cookies
#### 1.1 用处
1. 会话状态管理
  > 如用户登录状态,购物车,游戏分数等需要记录的信息
2. 个性化设置
3. 浏览器行为追踪
#### 1.2 是什么
1. 服务器发送到用户浏览器并保存在本地的一小块数据,它会在浏览器下次向同一服务器再发起请求时被携带并发送到服务器上
2. 服务器在接收到http请求时,可以在响应头(response)里面添加一个cookies(具体看语言).浏览器收到响应后通常会保存下cookies, 之后对该服务器每一次请求中都通过cookies请求头部将信息发送给服务器

#### 1.3 如何使用
1. cookies 响应头部  
  ~~~
  Set-Cookies: <cookies名> = <cookies值>
  ~~~
  > 具体看语言
2. cookies 生命周期
    > 当cookies的过期时间被设定时,设定的日期和时间只与客户端有关,而不是服务端
    1. 会话期cookies
        * 仅在会话期内有效,浏览器关闭后就自动删除
        * 不需要指定过期时间或有效期
    2. 持久期cookies
        * 取决于过期时间或有效期
3. cookies 限制访问
    * secure属性
      > 只适用于HTTPS
    * HttpOnly属性
      > js 的Document.cookies API无法访问带有该属性的cookies  
      > 此类属性只作用于服务器
4. Domain属性
    * 指定哪些主机可以接受cookies
    * 默认origin,不包含子域名
5. Path属性
    * 指定主机下哪些路径可以接受 Cookies, 以`/`(%x2F)为分隔符
      > 该URL路径必须存在与请求URL
#### 1.4 来源
[MDN](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Cookies)

### 2. session
#### 2.1 用处
令服务端区分用户
#### 3.1 是什么
1. 在客户端发送请求,建立会话(http)后,服务端确认请求中的cookies是否过期或cookies中是否存在session_id
2. 如果存在,即识别出用户,之后的服务端的session会指向该session_id的存储空间
3. 如果不存在,服务端会生成一个唯一的session_id,并写入cookies,最终作为响应发送给客户端
