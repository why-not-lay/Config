# STL
[stl](https://juejin.im/post/6844903809731264519)
#### set
集合,用来判断某个元素是不是在一个组里面,底层数据结构为红黑树,有序,不重复
* 包含的元素唯一且有序
* 顺序插入,不能在指定位置插入
* 插入效率比vector快

用法  
* 插入和删除元素
~~~C++
//插入
set.insert(element);
//删除
set.erase(element);
~~~
> 返回值是pair类型,如果插入重复元素则插入失败,可从返回值判断  
> 返回的pair类型为<iterator,bool>,第一个属性(first)为当前出入的迭代器的位置,第二个属性(second)表示插入是否成功

* 创建
~~~C++
//从小到大(默认)
set<int,less>
//从大到小
set<int,greater>
~~~
> 插入默认是从小到大, 其中less和geater为仿函数

* 查找
~~~C++
  set.find(key)  
~~~
> find函数查找元素key的迭代器位置,返回是iterator

~~~C++
set.lower_bound(key)
~~~
> lower_bound用于查找小于元素key的迭代器位置,返回值是iterator

~~~C++
set.upper_bound(key)
~~~
> upper_bound用于查找大于元素key的迭代器位置,返回值是iterator
    
~~~C++
set.equal_range(key)
~~~
> equal_range返回值为pair<iterator,iterator> ,第一个属性(first)表示大于等于k的迭代器位置,第二个(second)是大于k的迭代器位置

#### stack
* 一般用list或deque实现
* FILO

用法
~~~C++
//定义
stack<int> s1;
//入栈
s1.push(element);
//获取栈顶元素
s1.top();
//获取栈的大小
s1.size();
//出栈
s1.pop();
//栈是否为空
s1.empty();
~~~

#### queue
* 底层一般用list或deque实现

用法
~~~C++
//定义
queue<int> q;
//入队
q.push(element);
//判断是否为空
q.empty();
//获取队列头部元素
q.front();
//出队
q.pop();
~~~

