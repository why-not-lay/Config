# CSS
* background-image设置后需要同时设置框体大小,否则是不会显示的
> [background属性](https://www.w3school.com.cn/cssref/pr_background.asp)
* 形似::before,::after之类的tag是伪元素
> [伪元素](https://www.w3school.com.cn/css/css_pseudo_elements.asp)
* 如果要设置字体颜色直接用color属性
> [color属性](https://www.w3school.com.cn/cssref/pr_text_color.asp)


### 块级元素和行内元素
#### 块级元素
##### 是什么
块级元素占据其夫元素的整个空间，通常浏览器会在块级元素前后另起一个新行。
##### 用法
块级元素只能出现在\<body\>元素内
#### 行内元素
##### 是什么
一个行内元素只占据它对应标签边框所包含的空间，默认情况下，行内元素不会以新行开始
#### 两者区别
默认情况下，块级元素会新起一行，而行内元素则不会；一般块级元素可以包含行内元素和其他块级元素，而行内元素只能包含数据和其他行内元素。

### 盒模型
##### 是什么
CSS用于布局的基本单位和数据结构，其包含：
* content(width/height)
  > 内容宽高
* padding内边距
  > 控制内容和边框之间的距离
* border
  > 边框
* margin
  > 外边距（透明）
##### 赋值
赋值时按照顺时针：上->右->下->左。如果设置为百分比时，参考元素为父元素的width
##### auto 
常用来实现水平居中，它先让元素占据制定的width，剩余的宽度再一分为二成为左右外边距。
##### 外边距叠加
当两个垂直外边距相遇时会合并成为一个外边距，取值为较大者。以下盒子不会发生叠加：
* 行内框
* 浮动框
* 绝对定位框
> 针对上下margin，针对包含元素、上下相邻元素和空元素
##### 链接
[gitbooks](https://tink.gitbooks.io/fe-collections/content/ch03-css/box.html)

### 常规流
##### 别称
文档流，普通流，常规流，normal flow
##### 是什么
元素按照其在HTML中的先后位置至上而下布局，整个过程中行内元素水平排列，直到当前行被占满然后换行，块级元素会渲染为新行
##### 脱离常规流
浮动，绝对定位
##### 浮动
在浮动机制中，一个框盒首先根据常规流来布局，然后脱离常规流向左/右移动，这导致沿着它边上的文本都浮动
> 其他盒子看不到被浮动的盒子，但其他盒子的文本可以
##### 绝对定位
其他元素当该元素不存在，但该元素不会从dom中脱离

### display
##### 是什么
一个元素生成的框类型
##### inline（行内元素）
* 如果有inline框在同一行，不换行
* 宽度为内容宽度，不可改变，设置的width，height,line-height和margin-top，margin-bottom不会生效
##### block（块级元素）
独占一行，尽可能撑满容器（宽度默认100%）
##### inline-block
相比于inline可以设置宽和高
##### 链接
[gitbooks](https://tink.gitbooks.io/fe-collections/content/ch03-css/display.html)

### float
##### 浮动
浮动元素会向左/右移动，直至外边缘碰到包含框或另一个浮动框的边框为止
##### 高度塌陷
当浮动框高度超出容器框的时候，容器不会自动升高来闭合浮动元素

### position
##### 是什么
框的位置，以及其布局对周围框的影响
##### static
默认值，遵循普通流忽略top，bottom，left，right属性
> `unpositioned`，其他定位为`positioned`
##### relative（相对定位）
遵循普通流，只是相对于它平时的位置进行偏移，其他元素并不知道relative的位置，不会自动让出位置或补全
##### absolute（绝对定位）
脱离普通流，固定在某个位置，相对与最近被定位过的祖先,如果没有这样的祖先就以body为祖先固定在屏幕上，会随着页面滚动而移动
##### fixed
相对与窗口固定，固定元素的位置且无视页面滚动
##### 链接
[gitbooks](https://tink.gitbooks.io/fe-collections/content/ch03-css/position.html)

### z-index
##### 是什么
该属性设定了一个定位元素及其后代元素或flex项目的z-order，当元素重叠时，z-index较大的元素会覆盖较小的元素
> 只会对`positioned`框生效
##### 干什么
视觉上可以提供层次感
##### 链接
[MDN](https://developer.mozilla.org/zh-CN/docs/Web/CSS/z-index)

### 格式化上下文（FC）
#### 是什么
页面布局中一块渲染区域中的渲染规则，在普通流中，每个盒子都会处在一个FC中，但不会同时处于多个FC中
#### 块级格式化上下文(BFC)
只有block-level元素参与的渲染区域
##### 布局规则
* BFC内的盒子沿着垂直方向逐个排列
* BFC内盒子之间的垂直距离有margin属性决定，相邻的会发生外边距叠加
* BFC内盒子的左边缘都会接触包含块的左边缘（如果从右往左排列，那么右边缘会接触）
* BFC的内容不会与浮动元素发生重叠，浮动元素也会参与BFC的高度计算
* BFC是独立容器，子元素不会影响外面的元素，而外部的同样不会影响里面
##### 如何触发
* 根元素`<html>`
* 浮动元素（float不为none）
* 绝对定位元素
* overflow不为visible
* display为inline-block/table-cell/table-caption
* 弹性元素（display为flex或inline-flex元素的直接子元素）
上述任意一条成立均会在其内部产生BFC
##### 有什么用
* 阻止外边距叠加（合并），不同属于同一个BFC的盒子不会出现外边距合并
> 同一个BFC内相邻盒子之间外边距才会发生合并
* 清除内部浮动，即防止浮动元素高度越界
> BFC内浮动元素也会参与BFC的高度计算
* 自适应两栏布局
> BFC的内容不会与浮动元素发生重叠
#### 内联格式化上下文(IFC)
只有inline-level元素参与的渲染区域
##### 布局规则
* 盒子沿着水平方向逐个排列
* 只会计算盒子水平方向上的margin、border和padding，而不会计算垂直方向上的
* 在垂直方向上，盒子可以top对齐，bottom对其，文本基线对其
* 行框：能把一行的盒子完全包含进去的方形区域
* 行框的高度由计算规则确定，而且同一个IFC内的行框高度一般不同
* 行框通常是左右边紧贴包含块，但会因为浮动元素的存在发生变化。行框的宽有包含块和存在的浮动元素决定
* 如果一个行框无法容纳多个inline元素，那它们会被分布到多个垂直堆叠的行框内
* 如果一个inline元素的宽度超过行框容纳的宽度，那它会被分割成若干盒子然后跨行框分布，被切割处margin,border,padding不生效
##### 用处
* 水平居中
* 垂直居中
#### 网格布局格式化上下文(GFC)
#### 弹性格式化上下文（FFC）


