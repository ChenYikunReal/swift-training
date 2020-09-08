class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) 被析构") }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    var tenant: Person?
    deinit { print("Apartment #\(number) 被析构") }
}

// 两个变量都被初始化为nil
var sam: Person?
var number73: Apartment?

// 赋值
sam = Person(name: "sam")
number73 = Apartment(number: 73)

// 意感叹号是用来展开和访问可选变量 sam 和 number73 中的实例
// 循环强引用被创建
sam!.apartment = number73
number73!.tenant = sam

// 断开 sam 和 number73 变量所持有的强引用时，引用计数并不会降为 0，实例也不会被 ARC 销毁
// 注意，当你把这两个变量设为nil时，没有任何一个析构函数被调用。
// 强引用循环阻止了Person和Apartment类实例的销毁，并在你的应用程序中造成了内存泄漏
sam = nil
number73 = nil
