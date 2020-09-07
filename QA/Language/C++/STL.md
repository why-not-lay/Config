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

补充

仿函数
~~~C++
//定义仿函数结构体
struct <FunctionName>
{
  //重载括号操作符,比较大小
  bool operator()(const <type> &left, const <type> &right){
    //比较操作
    return true;
    //比较操作
    return false;
  }
}
~~~

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


#### priority_queue
* 底层一般为vector, 堆heap为处理规则来管理底层容器实现
* 分为最小值优先队列和最大值优先队列,此处的最大值和最小值是指队头元素

用法


~~~C++
//默认最大值优先
priority_queue<int> p;

/*
  *定义最大值优先级队列
  *less为仿函数
*/
priority_queue<int,vector<int>,less<int>> p2;

/*
  *定义最小值优先队列
  *greater为仿函数
*/
priority_queue<int, vector<int>,greater<int>> p3;

//获取头部元素
p.top();
~~~
> 其他操作类似queue


#### vector
* 动态数组,在堆中分配内存,元素连续存放,有保留内存,如果减少大小后,内存也不会释放;如果大小增大后,会重新分配内存
* 底层数据是数组  

用法
~~~C++
//定义
vector<int> v;
//尾部插入
v.push_back(element);
//头部引用,可以当左值
v.front() = 1;
//尾部引用,可以当左值
v.back() = 1;
//移除尾部元素
v.pop_back();

~~~
初始化
~~~C++
//直接构造函数初始化
vector<int> v1;
//拷贝构造函数初始化
vector<int> v2 = v1;
//使用部分元素构造
vector<int> v3(v1.begin(),v1.begin()+1);
//制定元素数量n,且每个元素初始化为m;
vector<int> v4(n,m);
~~~

遍历
~~~C++
/*
  *以[]获取元素
  *如果越界或出现其他错误,不会抛出异常,可能会崩溃
*/
v[0]


/*
  *以at方式获取元素
  *如果越界或出现其他错误,会抛出异常,需要补货异常并处理
*/
v.at(0);

/*
  *以迭代器方式遍历
*/

vector<int>::iterator it = v.begin();
*it;
~~~

尾部添加push_back
* 在当vector初始化n个元素的时候,此时默认在尾部(第n个元素后)添加元素
* 如果对象的成员变量中包含指针,会对对象进行浅拷贝,在释放的时候可能会导致问题
> 浅拷贝: 在对象进行初始化的过程中仅进行简单的数据成员赋值  
> 深拷贝: 当对象的成员变量中存在指针类型时,会分配内存并将指针指向的值全部拷贝过去

删除
~~~C++
//区间删除
v.erase(v.begin(),v.begin()+1);

//删除指定元素
v.erase(v.begin()+3);

~~~
> erase(iterator) 删除后会返回当前迭代器的下一个位置

插入
~~~C++
//指定位置插入元素
v.insert(v.begin()+3,10);

//在指定位置插入3个元素11
v.insert(v.begin()+3,3,11);
~~~




