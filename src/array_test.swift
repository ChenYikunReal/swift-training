var intArr1 = [Int](repeating: 10, count: 3)

print("第1个元素的值 \(intArr1[0])")
print("第2个元素的值 \(intArr1[1])")
print("第3个元素的值 \(intArr1[2])")

var intArr2 = [Int]()
intArr2.append(20)
intArr2.append(30)
intArr2 += [40]

print("第1个元素的值 \(intArr2[0])")
print("第2个元素的值 \(intArr2[1])")
print("第3个元素的值 \(intArr2[2])")

intArr2[0] = 50
print("第1个元素的值 \(intArr2[0])")

for item in intArr2 {
   print(item)
}

for (index, item) in intArr2.enumerated() {
   print(index + " " + item)
}

// 合并数组
var intArr3 = intArr1 + intArr2

for item in intArr3 {
   print(item)
}

// 还有count属性和isEmpty属性，干啥的就不用我多说了吧
