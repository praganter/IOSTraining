import UIKit


// 1 - Initializers
// If we use initializers we need to give all properties a value
struct User {
    var userName: String
    
    init() {
        userName = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.userName = "praganter"


// 2- Referring to the current instance
struct Person5 {
    var name : String
    init(name : String) {
        print("\(name) is given name")
        self.name = name
    }
}


// 3- Lazy properties
// If we did not need familytree property for particular person we use lazy keyword to property, swift will only create FamilyTree struct when it's first time  accessed to that property.
struct FamilyTree{
    init() {
        print("Creating family tree !")
    }
}

struct Person{
    var name : String
    lazy var familyTree = FamilyTree()
    
    init(name : String) {
        self.name = name
    }
}
var batuhan = Person(name: "Batuhan")
batuhan.familyTree


// 4- Static properties and methods
// static keyword using for sharing a property or method between all instance of struct
struct Students{
    var name : String
    static var clasSize = 0
    init(name : String) {
        self.name = name
        Students.clasSize += 1
    }
}
var batuhan1 = Students(name: "Batuhan")
var ilayda = Students(name: "İlayda")
print(Students.clasSize)



// 5- Access control
// topic is private
struct Citizen{
    var id : Int
    init(id : Int) {
        self.id = id
    }
    
    func idAccess() -> String {
        return "I can reach the ID which is \(id) while you can not"
    }
}

var citizen = Citizen(id: 45231)
citizen.idAccess()
