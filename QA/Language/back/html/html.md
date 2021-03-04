# html
### 页面渲染
##### 粗略过程
1. 解析HTML/SVG/XHTML文档生成 DOM Tree；解析CSS生成CSS规则树
2. 在解析DOM Tree和CSS Rule Tree后构造Rendering Tree
  > DOM Tree和Rendering Tree并不完全相同，对于DOM中的某些节点会被忽略掉
3. 调用操作系统的Native GUI的API进行绘制

