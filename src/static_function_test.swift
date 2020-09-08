class Math {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}

struct absno {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}

let no = Math.abs(number: -35)
let num = absno.abs(number: -5)

print(no)
print(num)
