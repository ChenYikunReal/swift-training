struct studentMarks {
   var mark1 = 100
   var mark2 = 78
   var mark3 = 98
}

let marks = studentMarks()
print("Mark1 是 \(marks.mark1)")
print("Mark2 是 \(marks.mark2)")
print("Mark3 是 \(marks.mark3)")


struct MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}
var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct
bStruct.mark = 97
print(aStruct.mark) // 98
print(bStruct.mark) // 97
