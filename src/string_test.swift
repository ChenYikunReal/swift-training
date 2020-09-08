// 字符串连接
let a = 1, b = 2, c = 3
var str = "\(a) + \(b) = \(c)"
print(str)

// 使用+=连接可变字符串
str += "; \(a) + \(a) = \(b)"
print(str)


// Swift3使用String.characters.count获取字符串长度
print(str.characters.count)

// 判断相等用==即可
print("1 + 2 = 3; 1 + 1 = 2" == str)

var unicodeString   = "斯威夫特"

// UTF8
for code in unicodeString.utf8 {
   print("\(code) ")
}

print()

// UTF16
for code in unicodeString.utf16 {
   print("\(code) ")
}

var num_str = "1"
var num : Int? = Int(num_str)

print("123" < str)

