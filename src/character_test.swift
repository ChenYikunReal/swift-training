let char1: Character = "A"
let char2: Character = "B"

print("char1 的值为 \(char1)")
print("char2 的值为 \(char2)")

// 报错，字符不是字符串
// let char3: Character = "AB"
// print("Value of char \(char3)")

// 报错：不能是""
// let char4: Character = ""

for ch in "ABCDE" {
    print(ch)
}

// 字符串连接字符
let str1 = "FEDCB"
print(str1.append(char1))

