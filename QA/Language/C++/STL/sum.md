# STL概论
### 1.什么是STL
STL是依据泛型思维架构起来的一个概念结构。这个以抽象概念为主体而非以实际类为主体的结构，形成了一个严谨的接口标准。在此接口下，任何组件都有最大的独立性，并以所谓迭代器胶合起来，或以所谓配接器互相配接，或以所谓仿函数动态选择某种策略
### 2.六大组件
#### 2.1.容器(container)
各种数据结构，如vector,list,deuqe,set,map
> class template
#### 2.2.算法(algorithms)
各种算法
> function template
#### 2.3.迭代器(iterators)
容器和算法之间的胶合剂(泛型指针)
> 将operator*, operator->, operator++, operator--等指针相关操作重载的class template
#### 3.4.仿函数(functors)
可作为算法的某种策略
> 重载operator()的class或class template
#### 3.5.配接器(adapters)
修饰容器或仿函数或迭代器接口的东西
#### 3.6.配置器(allocators)
负责空间配置与管理
> 动态空间配置，空间配置，空间释放的class template
#### 3.7.六大组件的交互关系
Container通过Allocator取得数据储存空间，Alogorithm通过Iterator存取Container内容，Functor协助Algorithm完成不同的策略变化，Adapter修饰或套接Functor
