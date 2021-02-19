# 其他（未归档）
### 1. js position
#### 1.1.用处
指定一个元素在文档中的定位方式，`top`,`right`,`bottom`,`left`属性决定了该元素的最终位置
#### 1.2.属性取值
##### static
使用正常布局行为，即元素在文档常规流中当前的布局位置
> `top`,`right`,`bottom`,`left`,`z-index`属性无效
##### relative
元素先放置在未添加定位时的位置，在不改变页面布局的前提下调整元素位置
> `table-*-group`,`table-row`,`table-coloumn`,`table-cell`,`table-caption`元素无效
##### absolute
元素会被移出正常文档流，且不为元素预留空间。通过指定元素相对于最近的非static定位祖先元素的偏移来确定位置。
> 可以设置外边距，且不会与其他边距合并
##### fixed
元素会被移出正常文档流，且不会为元素预留空间，而是通过制定元素相对于屏幕(viewport)的位置来指定元素位置。元素的位置在屏幕滚动时不会改变(每页固定位置)
> 会创建新的层叠上下文。当元素祖先`transform`,`perspective`,`filter`属性非`none`时，容器由viewport改为该祖先
##### sticky
元素根据正常文档流进行定位，相对于它的最近滚动祖先和最近块级祖先，且基于`top`,`right`,`bottom`,`left`进行偏移。偏移值不会影响任何其他元素
> 一个sticky元素会固定在离它的一个拥有“滚动机制”的祖先上

#### 链接
[MDN](https://developer.mozilla.org/zh-CN/docs/Web/CSS/position)
