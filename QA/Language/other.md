#other
* 字符集和字符编码区别
> 字符集：字符的集合  
> 字符编码：字符编码为特定的二进制数,字符集和字符编码一般一一对应
> [字符集和字符编码](https://dailc.github.io/2017/05/03/char_charset_charEncoding.html)
* Unicode和UTF-8的关系
> Unicode只是一个符号集，只规定了符号的二进制代码，没有规定二进制代码如何储存  
> UTF-8/UTF-16/...是Unicode的实现方式之一  
> UTF-8是变长编码方式，可以用1~4个字节表示一个符号
  
 UTF-8编码方式：
> * 对于单字节符号，字节第一位为0，后7为用符号的Unicode码
> * 对于n字节符号（n>1），第一个字节的前n位设为1，第n+1位设为0，后面字节的前两位一律设为10，剩下的二进制位为Unicode码
[Unicode](http://www.ruanyifeng.com/blog/2007/10/ascii_unicode_and_utf-8.html)

* 各种编码
> * ANSI：对于英文是ASCII编码，对于简体中文是GB2312编码，对于繁体中文是Big5码
> * USC-2：Unicode一种编码方式，直接用两个字节存储(码点不超过0xFFFF)，其中如果采用Big endian方式是Unicode的低八位放前，高八位放后；Little endian则相反。
> * GBK：仅限中国的中文字符，包含了简体中文和繁体中文
* MD5校验
> [MD5](https://blog.csdn.net/xiaofengcanyuexj/article/details/37698801)