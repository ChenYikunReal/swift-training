var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

print("key = 1 的值为 \(someDict[1])")
print("key = 2 的值为 \(someDict[2])")
print("key = 3 的值为 \(someDict[3])")

// 遍历字典
for (key, value) in someDict {
   print("字典 key \(key) -  字典 value \(value)")
}

// 这样也可以遍历
for (key, value) in someDict.enumerated() {
    print("字典 key \(key) -  字典 (key, value) 对 \(value)")
}

someDict.updateValue("One 新的值", forKey: 1)
print("key = 1 的值为 \(someDict[1])")

someDict[2] = "Two 新的值"
print("key = 2 的值为 \(someDict[2])")

// 移除字典键值对
var removedValue = someDict.removeValue(forKey: 2)

// 字典生成key数组和value数组
let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)

print("输出字典的键(key)")

for (key) in dictKeys {
    print("\(key)")
}

print("输出字典的值(value)")

for (value) in dictValues {
    print("\(value)")
}
