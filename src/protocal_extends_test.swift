protocol Classa {
    var no1: Int { get set }
    func calc(sum: Int)
}

protocol Result {
    func print(target: Classa)
}

class Student2: Result {
    func print(target: Classa) {
        target.calc(1)
    }
}

class Classb: Result {
    func print(target: Classa) {
        target.calc(5)
    }
}

class Student: Classa {
    var no1: Int = 10
    
    func calc(sum: Int) {
        no1 -= sum
        print("学生尝试 \(sum) 次通过")
        
        if no1 <= 0 {
            print("学生缺席考试")
        }
    }
}

class Player {
    var stmark: Result!
    
    init(stmark: Result) {
        self.stmark = stmark
    }
    
    func print(target: Classa) {
        stmark.print(target)
    }
}

var marks = Player(stmark: Student2())
var marksec = Student()

marks.print(marksec)
marks.print(marksec)
marks.print(marksec)
marks.stmark = Classb()
marks.print(marksec)
marks.print(marksec)
marks.print(marksec)
