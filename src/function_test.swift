func hello1(greeting: String) -> String {
    return (greeting)
}
print(hello1("Hello"))


// 返回多个值可以用元组代替
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("最小值为 \(bounds.min)，最大值为 \(bounds.max)")
}


// 无参无返回值
func hello2() {
    print("Hello")
}
hello2()


// 指定外部参数名
func pow(firstArg a: Int, secondArg b: Int) -> Int {
   var res = a
   for _ in 1..<b {
      res = res * a
   }
   print(res)
   return res
}
pow(firstArg:5, secondArg:3)


// 可变长参数构造器
func vari<N>(members: N...){
    for i in members {
        print(i)
    }
}
vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Chinese", "Math", "English")


// 默认参数只读，加上inout之后可改
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var x = 1
var y = 5
swapTwoInts(&x, &y)
print("x 现在的值 \(x), y 现在的值 \(y)")


// 将函数类型对象赋给变量
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum
print("输出结果: \(addition(40, 89))")
// 函数变量做参数
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("输出结果: \(addition(a, b))")
}
another(addition: sum, a: 10, b: 20)


// 函数嵌套
func calcDecrement(forDecrement total: Int) -> () -> Int {
   var overallDecrement = 0
   func decrementer() -> Int {
      overallDecrement -= total
      return overallDecrement
   }
   return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())
