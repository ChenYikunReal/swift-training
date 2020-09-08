class Student {
    let name: String
    var section: Marks?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name)") }
}

class Marks {
    let marks: Int
    unowned let stname: Student
    init(marks: Int, stname: Student) {
        self.marks = marks
        self.stname = stname
    }
    deinit { print("学生的分数为 \(marks)") }
}

var module: Student?
module = Student(name: "ARC")
module!.section = Marks(marks: 98, stname: module!)
module = nil
