// 分隔空格
let fullName = "First Last"
let fullNameArr = fullName.characters.split{$0 == " "}.map(String.init)
// or simply:
// let fullNameArr = fullName.characters.split{" "}.map(String.init)

fullNameArr[0] // First
fullNameArr[1] // Last
