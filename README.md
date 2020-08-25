# Swift入门练习记录

## Swift
![在这里插入图片描述](https://github.com/ChenYikunReal/swift_training/blob/master/images/swift-background.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70)

## Windows使用Swift
![在这里插入图片描述](https://github.com/ChenYikunReal/swift_training/blob/master/images/swift-windows.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70) <br/>

Swift for Windows
- [官方下载地址](https://swiftforwindows.github.io/)
- [备选CSDN下载](https://download.csdn.net/download/m0_47235762/12346913)
- [安装教程](https://blog.csdn.net/weixin_47580695/article/details/105941024)

CLion支持的Swift插件
- [下载地址](https://plugins.jetbrains.com/plugin/8240-swift)

Swift学习
- [Swift官方手册](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html)
- [Swift中文手册](https://www.runoob.com/manual/gitbook/swift5/source/_book/index.html)
- [Swift源码下载](https://swift.org/download/#latest-development-snapshots)


最终决定放弃CLion，因为CLion认为Windows系统不支持Swift所以也不支持Swift for Windows，所以选VS Code。<br/>

![在这里插入图片描述](https://github.com/ChenYikunReal/swift_training/blob/master/images/vscode.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70)


## 代码的处理方式
MacOS不是很熟悉；Windows使用文本编辑器可编辑，需要使用`Swift for Windows`进行编译。

## Swift关键词
- 与声明有关的关键词
    - class
    - deinit
    - enum
    - extension
    - func
    - import
    - init
    - internal
    - let
    - operator
    - private
    - protocol
    - public
    - static
    - struct
    - subscript
    - typealias
    - var
- 与语句有关的关键词
    - break
    - case 
    - continue
    - default
    - do
    - else
    - fallthrough
    - for
    - if
    - in
    - return
    - switch
    - where
    - while
- 与表达式和类型有关的关键词
    - as
    - dynamicType
    - false
    - is
    - nil
    - self
    - Self 	super
    - true
    - \_COLUMN\_
    - \_FILE\_
    - \_FUNCTION\_
    - \_LINE\_ 	
- 在特定上下文中使用的关键词
    - associativity
    - convenience
    - dynamic
    - didSet
    - final
    - get
    - infix
    - inout
    - lazy
    - left
    - mutating
    - none
    - nonmutating
    - optional
    - override
    - postfix
    - precedence
    - prefix
    - Protocol
    - required
    - right
    - set
    - Type
    - unowned
    - weak
    - willSet

## Swift转义字符
- \0 &emsp;&emsp;:&emsp;空字符
- \\\ &emsp;&emsp;:&emsp;反斜线 \
- \b &emsp;&emsp;:&emsp;退格(BS) ，将当前位置移到前一列
- \f &emsp;&emsp;:&emsp;换页(FF)，将当前位置移到下页开头
- \n &emsp;&emsp;:&emsp;换行符
- \r &emsp;&emsp;:&emsp;回车符
- \t &emsp;&emsp;:&emsp;水平制表符
- \v &emsp;&emsp;:&emsp;垂直制表符
- \\' &emsp;&emsp;:&emsp;单引号
- \\" &emsp;&emsp;:&emsp;双引号
- \000 &emsp;:&emsp;1到3位八进制数所代表的任意字符
- \xhh... &nbsp;:&emsp;1到2位十六进制所代表的任意字符

## Swift运算符
- Swift3 取消了++和--
- 基本运算符：+ - * / %
- 等于确实是==但没有===
- 没有&和|，与或非是&&、||、!
- 左移右移只有\<\<和\>\>
- 区间运算符：`...` 例：`for i in 1...5` 这个是闭区间 而左闭右开区间是：`for i in 1..<5`

## Swift条件语句
- if条件语句不打小括号，直接写逻辑表达式
- switch条件语句不打小括号，直接写逻辑表达式
- switch语句默认break，想继续执行下去可以加一行`fallthrough`
- switch语句的case可以包含多个情况，如`case 1,2`
- 三目运算符也支持，且比较正常：`Exp1 ? Exp2 : Exp3;`

## Swift循环语句
- for循环在Swift3中被弃用，这东西也不打小括号
- for...in还是可以用的
- do...while改成了`repeat...while`，while和repeat...while都不打小括号

## Swift字符串
- String不是Java那种表面可变实则不可变的引用类型，而是由var和let决定是否可变的。
- String支持+=
- 判空用`str.isEmpty`
- 单字符的字符串如`"A"`可以代表Character
