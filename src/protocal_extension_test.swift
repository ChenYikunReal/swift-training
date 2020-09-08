protocol AgeClasificationProtocol {
   var age: Int { get }
   func agetype() -> String
}

class Person {
   let firstname: String
   let lastname: String
   var age: Int
   init(firstname: String, lastname: String) {
      self.firstname = firstname
      self.lastname = lastname
      self.age = 10
   }
}

extension Person : AgeClasificationProtocol {
   func fullname() -> String {
      var c: String
      c = firstname + " " + lastname
      return c
   }
   func agetype() -> String {
      switch age {
      case 0...2:
         return "Baby"
      case 2...12:
         return "Child"
      case 13...19:
         return "Teenager"
      case let x where x > 65:
         return "Elderly"
      default:
         return "Normal"
      }
   }
}
