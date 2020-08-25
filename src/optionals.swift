// 下面的两个语句是等价的 允许出现此类型的值或一个空值 类型和?之间不允许有空格
var optionalInteger1: Int?
var optionalInteger2: Optional<Int>

optionalInteger1 = 123
// 如下方式可以访问可选类型变量
print(optionalInteger1!)

var myString: String? = nil
if myString != nil {
    print(myString)
} else {
    print("String => nil")
}

myString = "Hello"
// 强制解析
if myString != nil {
   // 强制解析
   print(myString!)
} else {
   print("String => nil")
}

// 可选绑定 如果有值就把它赋给临时变量
if let yourString = myString {
   print(yourString)
} else {
   print("String => nil")
}
