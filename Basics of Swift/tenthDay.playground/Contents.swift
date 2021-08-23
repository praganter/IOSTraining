import UIKit


// 1 - Creating your own classes
// Classes need own initializer if it has property
class Dog {
    var name : String
    var breed  : String
    
    init(name : String, breed : String){
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("HAV HAV !!")
    }
}

var dirilis = Dog(name: "Karabaş", breed: "Kangal")


// 2 - Class inheritance
//We can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.

class Kangal : Dog {
    init(name : String) {
        super.init(name: "Akbaş", breed: "Kangal")
    }
}


// 3- Overriding methods

class Chivava : Dog {
    override func makeNoise() {
        print("viyak viyak")
    }
}

var coco = Chivava(name: "Coco", breed: "Chivava")
coco.makeNoise()


// 4- Final classes
// Final classes can not be inherit from class that means no one could override our functions :)
final class Example{
    
}


// 5- Copying objects
// Changes made with copy of an instance of class effect copied object.
//On the other hand copied structs are not bound

class Singer {
    var name : String
    init(name : String) {
        self.name = name
    }
}
var singer = Singer(name : "Ceza")
print(singer.name)
var singer2 = singer
singer2.name = "Batuhan"
print(singer.name)


// 6 - Deinitializer
// execute when instance of class destroyed
class Person {
    var name = "Batuhan"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

var batuhan = Person()
batuhan.printGreeting()


// 7 - Mutability
// Structs are constant so need mutating. Classes can change variables so no need for mutating function

var sago = Singer(name: "Sagopa Kajmer")
print(sago.name)
sago.name = "Küheylan"
print(sago.name)
