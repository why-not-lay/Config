# JavaScript

[toc]

* JS数组中的元素类型可以不一样
> [数组详解](https://www.cnblogs.com/xiaohuochai/p/5679605.html)  
> [数组操作](https://juejin.im/post/5b0903b26fb9a07a9d70c7e0)
* 继承和原型链
> [继承与原型链](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Inheritance_and_the_prototype_chain)
* 箭头函数
> [箭头函数](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
* 对象字面量
> 封闭在花括号对({})中的一个对象的零个或多个“属性名-值”对的列表
> [对象字面量](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Guide/Grammar_and_types)
* 解构赋值
> [解构赋值](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment)
* 模块化
> [module](https://www.cnblogs.com/libin-1/p/7127481.html)

* scrollHeight，clientHeight，offsetHeight区别
> scrollHeight：一个完整页面，包括还未显示的内容的高度
> clientHeight：页面的显示区域的大小
> offsetHeight：对于一个元素而言，截至padding的高度，包括滚动条和边框的高度
> [Height](https://www.jianshu.com/p/d267456ebc0d)

* 翻页实现
> 利用CSS中的column属性实现，column—width值百分比无效   
> 边界判断：利用scrollwidth 和offset判断
> [column](https://developer.mozilla.org/zh-CN/docs/Web/CSS/columns)

* 元素隐藏
> 利用position
> [隐藏](https://juejin.im/post/6844903456545701901)

### DOM(文档对象模型)
#### 是什么
文档对象模型是HTML和XML文档的编程接口。提供了对文档的结构化的表述，定义了一种方式可以使从程序中对该结构进行访问，从而改变文档的结构，样式和内容。DOM将文档解析为一个由节点和对象（包含属性和方法）组成的结构集合。
> DOM提供了对同一份文档的另一种表现，存储和操作方式。  
> API = DOM + JS  
> 用于操纵HTML文档

### BOM(浏览器对象模型)
#### 是什么
BOM提供独立于内容的、可以与浏览器窗口进行互动的对象模型。

### let，var，const区别
##### let
`let`声明一个块级作用域的本地变量(块作用域)
~~~javascript
// variate 不能被引用
for(let variate = 0 ;;){
  // variate可以被引用
  //code
}
// variate 不能被引用
~~~
##### var
`var`声明的变量在它所声明的整个函数可见(函数作用域)
~~~javascript
// variate能够被引用
for(var variate;;){
  // variate能够被引用
  //code
}
// variate能够被引用
~~~

##### const
`const`声明一个不可变的常量，定义域总是可见的（块作用域）

### 类型自动转换
`String`和`Number`
~~~javascript
"3" + 4; // "34"
3 + 4 + "5"; // "75"
~~~

`==`和`===`
~~~javascript
//==会自动类型转换
123 == "123"; // true
1 == true; // true

//=== 不会自动类型转换
1 === true; // false
123 === "123"; // false
~~~

### `for..in` 和`for ... of`
##### `for... in`
遍历一个对象的除Symbol以外的可枚举属性，
> 可枚举属性：内部“可枚举”标志设置为`true`的属性。对于通过直接的赋值和属性初始化的属性默认为`true`；对于通过`Object.defineProperty`等定义的属性默认`false`
##### `for ... of`
在可迭代对象（包括Array，Map，Set，String，TypedArray，arguments等）上创建一个迭代循环
> 遍历可可迭代对象定义要迭代的数据



### `apply()`和`call()`
##### 是什么
这两者并无本质上的区别，均是调用一个具有给定`this`值的函数，以及一个数组（或类数组对象）的形式提供参数
> call()方法接受的是参数列表，而apply接受的是一个参数数组
##### 怎么用
以`apply()`为例：
~~~javascript
func.apply(thisArg,[arguments])

//thisArg参数：是func函数运行时使用的this值，如果处在非严格模式下并指定为`null`或`undefined`会自动替换为指向全局对象
~~~

### 箭头函数表达式
##### 是什么
函数的表达方式但比函数表达式更加简洁，没有`this`，`arguments`，`super`或`new.target`，不能作为构造函数
> 适合匿名函数
##### 语法
基础语法
~~~javascript
(param1,param2,...,paramN) => {statements}
(param1,param2,...,paramN) => expression
//等同于 (param1,param2,...,paramN) => { return expression;}
//单个参数时圆括号可选，没有参数时需要保留圆括号
~~~
##### `call`或`apply`调用
当使用`call`或`apply`方法调用一个函数时，只传递参数(不能绑定this)，第一个参数会被忽略

### IIFE（立即调用函数表达式）
##### 是什么
IIFE是一个在定义时就会立即执行的js函数
##### 格式
~~~javascript
(function(){
  /*
  * statements
  */
})();
~~~
##### 作用
避免了外界访问IIFE中的变量，而且不会污染全局作用域
##### 链接
[掘金](https://developer.mozilla.org/zh-CN/docs/Glossary/IIFE)

### 深浅拷贝
##### 基本类型
Number,String, Boolean, Undefined和Null类型均为深拷贝
##### 引用类型
默认为浅拷贝
##### 链接
[掘金](https://juejin.cn/post/6844903647856295949)

### 剩余参数和arguments
##### arguments
对应于传递给函数的参数的类数组对象
> 类数组：具有数组的长度，索引属性，但没有数组的内置函数
##### 剩余参数 
将一个不定数量的参数表示为一个数组（真数组）

形式：
~~~javascript
function(...rest_args){
  
}
}
~~~

##### 链接

[剩余参数MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Functions/Rest_parameters)

[arguments\_MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Functions/arguments)

### 解构赋值和展开语法
#### 解构赋值
##### 是什么
可以将属性/值从对象/数组中取出，赋值给其他变量
##### 怎么用
~~~javascript
[a,b] = [10,20]

[a,b,...rest] = [10,20,30,40,50]

({a,b} = {a:10,b:10})
~~~
> 匹配对应的，不匹配的忽略
##### 链接
[MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment)
#### 展开语法
##### 是什么
展开语法可以在函数调用/数组构造时，将数组表达式或者string在语法层面展开；还可以在构造字面量对象时，将对象表达式按key-value方式展开
##### 怎么用
~~~javascript
//函数调用
myFunction(...iterableObj)

//字面量数组构造字符串
[...iterableObj,'1',...'hello',6]

//克隆或者拷贝(ECMAScript 2018特性)
let clone = {...obj}
~~~

### 原型和继承
##### 原型
每个实例对象都有一个私有属性`__proto__`指向它的构造函数的原型对象`prototype`,该原型对象也有一个自己的原型对象`__proto__`，层层向上直到一个对象的原型对象为`null`
##### 属性继承
当试图访问一个对象属性时，它不仅仅在该对象上搜寻，还会搜寻该对象的原型，以及对象原型的原型,直至到达原型链的末尾
##### 继承方法
当继承的函数被调用时，`this`指向是当前继承的对象

### Object
##### 描述
js中，几乎所有的对象都是Object类型的实例，它们都会从`Object.prototype`继承属性和方法
##### 方法
| 函数名 | 用处                                                 | 备注                     |
|--------|------------------------------------------------------|--------------------------|
| create | 使用现有的对象来提供新创建的对象的__proto__          |                          |
| assign | 将所有可枚举属性的值从一个或多个源对象分配到目标对象 | 第一个参数会接受后续属性 |

##### prototype方法
| 函数名         | 用处                                                 | 备注 |
|----------------|------------------------------------------------------|------|
| hasOwnProperty | 用于指示对象自身属性中是否具有指定的属性，返回布尔值 |      |

### Array
##### prototype方法
| 函数名  | 用处                                                                 | 备注                                   |
|---------|----------------------------------------------------------------------|----------------------------------------|
| map     | 创建一个新的数组，结果是该数组中的每个元素调用一次提供函数后的返回值 |                                        |
| forEach | 对函数的每个元素执行一次给定的函数                                   | 如果遇到已删除或者未初始化的项会被跳过，会给callback传三个参数：数组当前值，数组当前项索引，数组对象本身 |

### Function
##### 描述
每个js的函数实际上都是一个`Function`对象，Function创建的函数只能在全局作用域中运行
##### 怎么用
~~~javascript
new Function([arg1[,arg2[,...agrN]],] functionBody)
~~~
##### prototype方法
| 函数名 | 用处                                                                           | 备注 |
|--------|--------------------------------------------------------------------------------|------|
| call   | 用一个指定的`this`值和单独给出的参数调用函数                                   |      |
| apply  | 和`call`类似，但参数是数组                                                     |      |
| bind   | 创建一个新的函数，在`bind()`调用时，新函数的`this`被指定为`bind()`的第一个参数 |      |

### this
##### 是什么
当前执行上下文的一个属性，在非严格模式下，总是指向一个对象，在严格模式下可以是任意值
##### 具体
在全局模式下，this指向全局对象(window)；在函数中取决于函数的调用方式。如果在严格模式下，如果进入执行环境时没有设置this值，this会保持undefined

### new
##### 是什么
创建一个用户定义的对象类型的实例或具有构造函数的内置对象的实例
##### 具体过程
当new时：
1. 创建一个空的JS对象newObj(即{})
2. 链接该对象(设置该对象的constructor)到另一个对象
    > newObj.__proto__ -> ObjConstructor.prototype
3. 令新的对象newObj作为`this`的上下文
4. 如果该函数没有返回对象则返回this
    > 如果返回的是普通类型，同样是返回this；

### 继承
#### 原型链继承
##### 实现
子构造函数的prototype指向父实例
##### 优点
继承了父类模板，且继承了父类的原型对象
##### 缺点
* 如果需要新增原型属性和方法需要在原型绑定后`SubType.prototype = new SuperType()`后执行
* 无法实现多继承
* 来自原型对象的所有属性都被所有子类实例共享
* 创建子类实例时，无法向父类构造函数传参
#### 构造继承
##### 实现
在子类型的构造函数内部调用父类构造函数
> 利用 `call` 方法
##### 优点
解决了原型链中的子类实例共享父类引用对象的问题，实现了多继承且可以向父类传递参数
##### 缺点
* 实例不是父亲的实例，只是子类的实例
* 只能继承父类的实例属性和方法，不能集成原型属性和方法
* 无法实现函数复用，每个子类都有父类实例函数的副本，影响性能
#### 组合继承
##### 事项
使用原型链继承使用对原型对原型属性和方法的继承，通过构造函数继承来实现对实例属性的继承
> 本质上使用了两次父类构造函数
##### 注意
在最后要修正子类构造函数中`prototype.constructor`为子类构造函数
##### 优点
综合了原型链和构造的优点，同时也解决了引用属性共享问题
##### 缺点
调用了两次父类构造函数，生成了两份实例(实例的属性屏蔽了原型链上的属性)
#### 寄生组合继承
##### 实现
借用构造函数继承属性，通过原型链混成形式继承方法
> 利用`SubType.prototype = Object.create(SuperType.prototype)`  
> 如果继承多个对象可以使用`Object.assign(SubType.prototype,OtherSuperType.prototype)`
##### 优点
* 只调用了一次父类构造函数，只创建了一份父类属性
* 原型链保持不变
* 能够正常使用`instanceof` 和 `isPrototypeOf`
#### 原型式继承
#### ES6继承
##### class
~~~javascript
class People{
  constructor(){
    //statements
  }
  func(){}
}

class Man extends People{
  constructor(){
    // 相当于People.call(this)
    super();
    //statements
  }
  func1(){}
}
~~~
本质上是寄生组合继承

### instanceof
##### 作用
用于判断对象是否属于某个class
> `typeof`用于判断属于哪个类型
##### 原理
在原型链中逐层比较`__proto__`是否对应`class.prototype`,若在过程中有对应的，返回true，否则返回false

### 执行上下文和执行栈
#### 执行上下文
##### 是什么
评估和执行js代码环境的抽象概念
##### 类型
* 全局执行上下文：默认或是基础上下文，一个程序之后有一个全局执行上下文
  * 执行：创建全局对象(浏览器下是window)，并将该全局对象赋予this

函数执行上下文：函数调用时就会被创建

eval函数上下文：执行在eval函数内部代码
##### 如何创建
创建阶段
1. this绑定
    * this的绑定决定于函数如何被调用，如果是被对象调用，this绑定对象；否则设置为全局对象(严格模式下为`undefined`)
2. 创建词法环境组件
    * 环境中的两种组件
      * 环境记录器：存储变量和函数声明的实际位置
        * 两种类型：声明式环境记录器（存储变量、函数和参数）+ 对象环境记录器（定义出现在全局上下文的变量和函数关系
      * 外部环境的引用：用于访问父级词法环境
    * 词法环境的两种类型：
      * 全局环境：没有外部引用的词法环境，所以外部环境引用为`null`
      * 函数环境
3. 创建变量环境组件
    * 同样是一个词法环境，环境记录器持有变量声明语句在执行上下文中创建的绑定关系
    * 在ES6，词法环境和变量环境的一个不同是前者用来保存函数声明和变量(let和const)绑定，而后者只用来存储var变量绑定

执行阶段：完成变量分配，最后执行代码


#### 执行栈
##### 作用
保存代码运行时创建的所有执行上下文
> 类似C++函数调用时的栈

### 作用域和作用域链
#### 作用域
##### 作用 
隔离变量，不同作用域下同名变量不会有冲突
##### 全局作用域和函数作用域
任何地方都能访问的对象具有全局作用域，而在函数内部声明的变量具有函数作用域有如下几类：
* 最外层函数和在最外层函数外部定义的变量
* 所有未定义直接赋值的变量
* `window`对象的属性

对于块语句`{}`，如if和switch语句，它们不会创建一个新的作用域
> 这里指的是`var`声明的变量
##### 块级作用域
块级作用域是通过`let`和`const`声明，所声明的变量在指定块的作用域外无法被访问，有如下几类：
* 函数内部
* 代码块`{}`内部

特点：
* 声明不会提升到代码块顶部
* 禁止在同一作用域内重复声明
#### 作用域链
##### 自由变量
当前作用域中没有定义的变量，但在其他作用域已经定义了

取值是从创建时候的作用域时取，而不是调用


### 变量提升
##### 是什么
js中，变量和和函数可以在声明之前进行初始化和使用(var)
> 提升的是声明，初始化不会被提升  
> 函数的声明会被优先提升

### promise
#### 有什么用
表示一个异步操作的最终完成(或失败)及其结果值。它能够把异步操作最终的成功返回值或者失败原因和相应的处理程序关联起来，异步方法不会立即返回最终的值，而是返回一个promise
#### 三种状态
* 待定(pending)：初始态
* 接受(fulfilled)：成功
* 拒绝(rejected)：失败

当状态发生改变，promise的then的相关方法就会被调用
#### 用法
~~~javascript
let p = new Promise((resolve, reject) => {
  //
  //code
  //
  // resolve(somevalue); //-> fulfilled
  // reject(somevalue);  //-> rejected
});
~~~

### 函数防抖和节流
#### 防抖
##### 是什么
在时间被触发n秒后再执行回调，如果在这n秒内被再次触发，则重新计时
##### 实现
~~~javascript
function debounce(fn,delay){
  var timer;
  return function(){
    var _this = this;
    var args = arguments;
    if(timer){
      clearTimeout(timer);
    }
    timer = setTimeout(function(){
      fn.apply(_this,args);
    },delay);
  }
}
~~~

#### 节流
##### 是什么
每隔一段时间才执行一次函数
##### 实现
~~~javascript
function throttle(fn,delay){
  var timer;
  return function(){
    var _this = this;
    var args = arguments;
    if(timer){
      return;
    }
    timer = setTimeout(function(){
      fn.apply(_this,args);
      timer = null;
    },delay);
  }
}
~~~





### Event Loop
#### V8引擎
V8引擎中具有Call Stack和heap，其中heap用于分配内存，而Call Stack是JS代码执行时候的栈，由于Js是单线程的，所以JS只有一个stack。
#### Event Loop机制
##### 任务队列
js中存在多种任务队列，分为宏任务和微任务
* 宏任务：`setTimeout、setInterval、I/O、UI rendering`
* 微任务：`process.nextTick、Promise、MutationObserver`

上述描述的setTimeout等是指一种任务源，其对应一种任务队列，真正放入任务队列的是任务源指定的异步任务。任务源指定的异步任务不是立即放入任务队列中，而是在收到相应结果后才被放入

宏任务优先级：setTimeout > setInterval > I/O  
微任务优先级：Promise > Object.observe > MutationObserver

对于UI rendering来说，每次清空微任务队列后会根据情况触发
##### 机制
1. 主线程执行JS代码，形成上下文栈，当遇到各种任务源时将其所指定的异步任务挂起，接受到响应结果后将异步任务放入对应的任务队列中，知道栈中只剩下全局上下文
2. 将微任务队列中的所有任务队列按优先级、单个任务队列的异步任务入栈并执行，直到清空所有的微任务队列
3. 将宏任务队列中优先级最高的任务队列中的异步任务入栈执行
4. 重复2,3步骤，直至全局上下文出栈

### 懒加载和预加载
#### 懒加载(延迟加载)
##### 是什么
指的是在长网页中延迟加载图像。用户滚动到它们之前，可视区域外的图像不会加载。
##### 作用
* 提升用户体验
* 减少无效资源加载
* 防止并发加载的资源过多会阻塞js的加载
##### 原理
首先将图片的src设为空字符串，图片的真实路径设置在data-original属性中。当页面滚动时候坚挺scroll事件，在scroll事件回调中判断图片是否进入了可视区域，如果在则将图片的src设置为data-origin
##### 实现
~~~html
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lazyload</title>
    <style>
      .image-item {
	    display: block;
	    margin-bottom: 50px;
	    height: 200px;//一定记得设置图片高度
	}
    </style>
</head>
<body>
<img src="" class="image-item" lazyload="true"  data-original="images/1.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/2.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/3.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/4.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/5.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/6.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/7.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/8.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/9.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/10.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/11.png"/>
<img src="" class="image-item" lazyload="true"  data-original="images/12.png"/>
<script>
  
</script>
</body>
</html>
~~~

#### 预加载
##### 是什么
将所需要的资源提前请求要求加载到本地，这样后面在需要用到时直接从缓存中提取资源

### offset, client, scroll
#### offset
##### offsetParent
偏移量就需要有个基准,基准就是该元素的offsetParent

offsetParent是该元素最近的定位(即不为`position:static`)的定位元素或者最近的`table,td,th,body`元素。当该元素的`display:none`时，`offsetParent`为`null`

当该元素的`position:fixed`时，`offsetParent`也为`null`
##### offset属性
| 名           | 义                                           | 备注                                                             |
|--------------|----------------------------------------------|------------------------------------------------------------------|
| offsetHeight | 元素的像素高度包含元素垂直内边距和边框       | 包含水平滚动条                                                   |
| offsetWidth  | 元素宽度包含元素水平内边距和边框             | 包含垂直滚动条                                                   |
| offsetLeft   | 元素左上角相当于`offsetParent`的左边界偏移量 | 块级元素相对于边界框，可被截断的行内元素相对于第一个边界框的位置 |
| offsetTop    | 元素相对于`offsetParent`元素顶部内边距的距离 |                                                                  |
#### client
##### client属性
| 名           | 义                                         | 备注                                 |
|--------------|--------------------------------------------|--------------------------------------|
| clientHeight | 元素内部高度，包含内边距但不包括水平滚动条 | 没有定义css或者内联布局盒子的元素为0 |
| clientWidth  | 元素内部宽度，包含内边距但不包括垂直滚动条 | 没有定义css或者内联布局盒子的元素为0 |
| clientLeft   | 元素左边框的宽度，不包含做外边距和左内边距 | 包括左边的垂直不懂条                 |
| clientTop    | 元素顶部边框宽度                           |                                      |

#### scroll
##### scroll属性
| 名           | 义                           | 备注                                                                                      |
|--------------|------------------------------|-------------------------------------------------------------------------------------------|
| scrollHeight | 元素内容高度，包括溢出的内容 |                                                                                           |
| scrollWidth  | 元素内容宽度，包括溢出的内容 |                                                                                           |
| scrollLeft   | 元素滚动条到元素左边的距离   | 如果内容排列方向是rtl(right-to-left),那么滚动条会位于最右侧，初始值为0，拖动时会变成负数 |
| scrollTop    | 滚动条距离开始的像素         |                                                                                           |

#### getBoundingClientRect函数
该方法返回元素的大小相对于视口的位置
> 左上角，右下角，长，宽


### 获取元素的css属性
#### ele.style
该方法只能获取内联元素
#### window.getComputedStyle()
获取的属性不可写


### 垃圾回收机制(GC)
对于不需要的内存部分进行回收
> 可达性
#### 引用计数法
对象是否需要 => 对象有没有其他对象引用。如果没有引用指向该对象，对象就会被回收

问题：循环引用
> 对象之间相互引用

#### 标记-清除算法
给所有的引用作标记，去除当前上下文中可被引用到的引用的标记，回收仍被标记的引用的内存
