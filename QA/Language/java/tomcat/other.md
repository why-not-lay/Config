# other.md

### webapp部署项目后,访问网页前需要添加项目名?
#### 1. 将\*.war 改为 ROOT.war
#### 2. 在 conf/server.xml 的 host节点添加如下节点
~~~
<Context docBase="{项目文件的路径或war包路径}" path="" reloadable="true" crossContext="true"/>
~~~
* path : 指定web应用的URL入口
* docBase : 指定web的文件路径
* reloadable : 如果为true,当WEB-INF/classes 或WEB-INF/lib变化时,服务器自动更新web

