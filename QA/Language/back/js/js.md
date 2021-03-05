# JavaScript
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
