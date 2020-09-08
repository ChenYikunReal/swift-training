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



![在这里插入图片描述](https://github.com/ChenYikunReal/swift_training/blob/master/images/swift-vscode.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg5NjMxOA==,size_16,color_FFFFFF,t_70)

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

## Swift枚举
跟C和Objective-C不同，Swift的枚举成员在被创建时不会被赋予一个默认的整型值。<br/>
不过，只要确定一个枚举值，其余可以自动推导，默认从0开始递增1。

## Swift结构体
Swift 结构体是构建代码所用的一种通用且灵活的构造体。

我们可以使用结构体来定义你的自定义数据类型。<br/>
我们可以为结构体定义属性（常量、变量）和添加方法，从而扩展结构体的功能。

Swift结构体与C和Objective-C不同的是：
- 结构体不需要包含实现文件和接口。
- 结构体允许我们创建一个单一文件，且系统会自动生成面向其它代码的外部接口


对于结构体，需要注意以下内容：

结构体实例总是通过值传递来定义你的自定义数据类型。

按照通用的准则，当符合一条或多条以下条件时，请考虑构建结构体：
- 结构体的主要目的是用来封装少量相关简单数据值。
- 有理由预计一个结构体实例在赋值或传递时，封装的数据将会被拷贝而不是被引用。
- 任何在结构体中储存的值类型属性，也将会被拷贝，而不是被引用。
- 结构体不需要去继承另一个已存在类型的属性或者行为。

举例来说，以下情境中适合使用结构体：
- 几何形状的大小，封装一个width属性和height属性，两者均为Double类型。
- 一定范围内的路径，封装一个start属性和length属性，两者均为Int类型。
- 三维坐标系内一点，封装x，y和z属性，三者均为Double类型。

再次强调：结构体实例是通过值传递而不是通过引用传递。

## Swift类
Swift 类是构建代码所用的一种通用且灵活的构造体，我们可以为类定义属性（常量、变量）和方法。

与其他编程语言所不同的是，Swift 并不要求我们为自定义类去创建独立的接口和实现文件。我们所要做的是在一个单一文件中定义一个类，系统会自动生成面向其它代码的外部接口。

### 类和结构体的对比
Swift 中类和结构体有很多共同点。共同处在于：
- 定义属性用于存储值
- 定义方法用于提供功能
- 定义附属脚本用于访问值
- 定义构造器用于生成初始化值
- 通过扩展以增加默认实现的功能
- 符合协议以对某类提供标准功能

与结构体相比，类还有如下的附加功能：
- 继承允许一个类继承另一个类的特征
- 类型转换允许在运行时检查和解释一个类实例的类型
- 解构器允许一个类实例释放任何其所被分配的资源
- 引用计数允许对一个类的多次引用

## Swift可选元组类型的说明
(Int, Int)?与(Int?, Int?)是不同的。

前者表示表示这个元组是可选的，后者表示对应的元组内元素值是可选的。

## Swift访问权限
|访问级别 | 定义 |
|:---:|:---:|
|public | 可以访问自己模块中源文件里的任何实体，别人也可以通过引入该模块来访问源文件里的所有实体 |
|internal | 可以访问自己模块中源文件里的任何实体，但是别人不能访问该模块中源文件里的实体 |
|fileprivate | 文件内私有，只能在当前源文件中使用 |
|private | 只能在类中访问，离开了这个类或者结构体的作用域外面就无法访问 |



说明：
- Swift模块指的是以独立单元构建和发布的Framework或Application，要通过`import`来调用
- 源文件是单个源码文件，它通常属于一个模块，源文件可以包含多个类和函数的定义
- 子类的访问级别不得高于父类的访问级别
- 常量、变量、属性不能拥有比它们的类型更高的访问级别
- 下标也不能拥有比索引类型或返回类型更高的访问级别
- Setter的访问级别可以低于对应的Getter的访问级别，这样就可以控制变量、属性或下标索引的读写权限
- 我们可以给自定义的初始化方法申明访问级别，但是要不高于它所属类的访问级别。但必要构造器例外，它的访问级别必须和所属类的访问级别相同
- 如同函数或方法参数，初始化方法参数的访问级别也不能低于初始化方法的访问级别
- 欲对协议设置访问权限，必须确保该协议只在申明的访问级别作用域中使用
- 扩展成员应该具有和原始类成员一致的访问级别
- 定义的类型别名都会被当作不同的类型，以便于进行访问控制，但它的访问级别不可高于原类型的访问级别

## Swift闭包
闭包(Closures)是自包含的功能代码块，可以在代码中使用或者用来作为参数传值。

全局函数和嵌套函数其实就是特殊的闭包。

Swift闭包的三种形式：
- 全局函数 : 有名字但不能捕获任何值 	
- 嵌套函数 : 有名字，也能捕获封闭函数内的值
- 包表达式 : 无名闭包，使用轻量级语法，可以根据上下文环境捕获值

Swift闭包的优化之处：
- 根据上下文推断参数和返回值类型
- 从单行表达式闭包中隐式返回（也就是闭包体只有一行代码，可以省略return）
- 可以使用简化参数名，如$0, $1(从0开始，表示第i个参数...)
- 提供了尾随闭包语法(Trailing closure syntax)

Swift闭包语法结构：
```swift
{(parameters) -> return type in
   statements
}
```

尾随闭包的使用：
```swift
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // 函数体部分
}

// 以下是不使用尾随闭包进行函数调用
someFunctionThatTakesAClosure({
    // 闭包主体部分
})

// 以下是使用尾随闭包进行函数调用
someFunctionThatTakesAClosure() {
  // 闭包主体部分
}
```

闭包可以在其定义的上下文中捕获常量或变量。

即使定义这些常量和变量的原域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值。

注意，闭包是一种`引用类型`。

## Swift延迟存储属性

延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。

在属性声明前使用 lazy 来标示一个延迟存储属性。

注意，必须将延迟存储属性声明成变量（使用var关键字），因为属性的值在实例构造完成之前可能无法得到。而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延迟属性。 

延迟存储属性一般用于：
- 延迟对象的创建
- 当属性的值依赖于其他未知类

## Swift下标脚本
- 下标脚本允许你通过在实例后面的方括号中传入一个或者多个的索引值来对实例进行访问和赋值
- 下标脚本可以设定为读写或只读
- 根据使用场景不同下标脚本也具有不同的含义
- 下标脚本允许任意数量的入参索引，并且每个入参类型也没有限制
- 下标脚本的返回值也可以是任何类型
- 下标脚本可以使用变量参数和可变参数
- 下标脚本支持重载

## Swift自动引用计数ARC
- 当每次使用 init() 方法创建一个类的新的实例的时候，ARC 会分配一大块内存用来储存实例的信息
- 内存中会包含实例的类型信息，以及这个实例所有相关属性的值
- 当实例不再被使用时，ARC 释放实例所占用的内存，并让释放的内存能挪作他用
- 为了确保使用中的实例不会被销毁，ARC 会跟踪和计算每一个实例正在被多少属性，常量和变量所引用
- 实例赋值给属性、常量或变量，它们都会创建此实例的强引用，只要强引用还在，实例是不允许被销毁的

## Swift可选链
可选链（Optional Chaining）是一种可以请求和调用属性、方法和子脚本的过程，用于请求或调用的目标可能为nil。可选链在很多编程语言中也存在着，而不仅仅是Swift。

可选链返回两个值：
- 如果目标有值，调用就会成功，返回该值
- 如果目标为nil，调用将返回nil

多次请求或调用可以被链接成一个链，如果任意一个节点为nil将导致整条链失效。

## Swift特殊类型Any和AnyClass
Swift为不确定类型提供了两种特殊类型别名：
- AnyObject可以代表任何class类型的实例。
- Any可以表示任何类型，包括方法类型（function types）。

>注意：
只有当你明确的需要它的行为和功能时才使用Any和AnyObject。在你的代码里使用你期望的明确的类型总是更好的。


## Swift类型转换
- 类型检查用`is`
- 向下转型，不确定用`as?`，确定用`as!`


## Swift协议
Swift的协议这个东西，刚看的时候我正好累的够呛，看的头晕脑胀……后来一想，这不就是……类似于Java接口、抽象类的一个东西吗，起到一个规范的作用，那就懂了……

最后说一下协议一致性检查使用到的一些要点：
- `is`操作符用来检查实例是否遵循了某个协议。
- `as?`返回一个可选值，当实例遵循协议时，返回该协议类型;否则返回nil。
- `as`用以强制向下转型，如果强转失败，会引起运行时错误。
