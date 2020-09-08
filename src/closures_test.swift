let divide = {(val1: Int, val2: Int) -> Int in 
   return val1 / val2 
}
let result = divide(200, 20)
print (result)


// 闭包表达式
let names = ["AT", "AE", "D", "S", "BE"]
// 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sorted(by: backwards)
print(reversed)

names = ["AT", "AE", "D", "S", "BE"]
// 缩写
reversed = names.sorted(by: { $0 > $1 })
print(reversed)

names = ["AT", "AE", "D", "S", "BE"]
// 尾随闭包
reversed = names.sorted() {$0 > $1}
print(reversed)


/*
 * 嵌套函数可以捕获其外部函数所有的参数以及定义的常量和变量
 * 即使定义这些常量和变量的原域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值
 * 嵌套函数可以捕获其外部函数所有的参数以及定义的常量和变量，这里以嵌套函数为例测试这一特点
 * 同时注意：测试闭包是一种引用类型，这里也一并进行测试
 */
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)
// 返回的值为10
print(incrementByTen())
// 返回的值为20
print(incrementByTen())
// 返回的值为30
print(incrementByTen())
// 返回的值为40
print(incrementByTen())
// 赋值，引用传递
let alsoIncrementByTen = incrementByTen
// 返回的值也为50
print(alsoIncrementByTen())
