import Foundation

struct Person {
   var name: String
   var age: Int

   init(name: String, age: Int) {
       self.name = name
       self.age = age
   }
   

   func sayHello()-> String {
       return "Hello there! I am \(self.name) and have \(self.age) years!"
   } 
}

let adriano = Person(name: "Adriano", age: 33)

print(adriano.sayHello())