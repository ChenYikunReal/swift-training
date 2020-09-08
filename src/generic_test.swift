// 定义一个交换两个变量的函数
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}
 
var numb1 = 100
var numb2 = 200
 
print("交换前数据:  \(numb1) 和 \(numb2)")
swapTwoValues(&numb1, &numb2)
print("交换后数据: \(numb1) 和 \(numb2)")
 
var str1 = "A"
var str2 = "B"
 
print("交换前数据:  \(str1) 和 \(str2)")
swapTwoValues(&str1, &str2)
print("交换后数据: \(str1) 和 \(str2)")




// 泛型的栈
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}
 
var stackOfStrings21 = Stack<String>()
print("字符串元素入栈: ")
stackOfStrings21.push("google")
stackOfStrings21.push("runoob")
print(stackOfStrings21.items);
 
let deletetos = stackOfStrings21.pop()
print("出栈元素: " + deletetos)
 
var stackOfInts = Stack<Int>()
print("整数元素入栈: ")
stackOfInts.push(1)
stackOfInts.push(2)
print(stackOfInts.items);


extension Stack {
    var topItem: Element? {
       return items.isEmpty ? nil : items[items.count - 1]
    }
}
 
var stackOfStrings2 = Stack<String>()
print("字符串元素入栈: ")
stackOfStrings2.push("google")
stackOfStrings2.push("runoob")
 
if let topItem = stackOfStrings2.topItem {
    print("栈中的顶部元素是：\(topItem).")
}
 
print(stackOfStrings2.items)
