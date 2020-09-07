# 语法
#### import
导入
* 相对导入
* 绝对导入
> 对于运行入口文件的导入,可以使用绝对导入,否则需要相对导入  
作用
> 引入模块(module)  
> 个人认为有点像include

用法

~~~python
import <module>
~~~

> * 直接接模块名会在两个路径寻找模块: **sys.path**中和**运行文件目录**,其中sys.paht路径可以通过导入sys模块后查看

~~~python
from <package(dir)> import <module>
~~~

> * 会在**sys.paht** 和 **运行文件目录**下寻找

~~~python
import <module> as <module_other_name>
~~~

> * 模组重命名

~~~python
from <module> import <function>, <variable>, <class>
~~~

> * 导入模组中某一函数,变量和类  
> * 如果导入过多,可以在行后加入`\`进行换行, 也可以用括号框起来

~~~python
from . import <module>
~~~

> * 导入和自己同目录下的模块(相对导入)

~~~python
from .<package> import <module>
~~~

> * 导入和子集同目录的包模块(相对导入)

~~~python
from .. import <module>
~~~

> * 导入上级目录的模块(相对导入)

~~~python
from ..<package> import <module>
~~~

> * 导入上级目录下的包模块(相对导入)

#### 切片[:]
索引
~~~python
s[0]
s[-1]
...
~~~

> 正数从左往右索引,索引从0开始  
> 负数从右往左索引,索引从-1开始  

切片

~~~python
s[0:3]
s[1:]
s[:3]

...
~~~

> 切片区间为左闭右开[)  
> 当右边缺值时,切到尾;当左边缺值时,从头开始;当两边都缺值时,为副本  

~~~python
s[:11:2]
s[11::-2]
~~~

> 第三个值为步长,正数从左往右,负数从右往左  



