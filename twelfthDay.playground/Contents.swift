import UIKit

// 1- Handling missing data (Optionals)
// Maybe it holds a number maybe nil
var age : Int? = nil

age = 38


// 2- Unwrapping optionals
// if it has data take it

var name : String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
}else {
    print("Missing data")
}

// 3- Unwrapping with guard
// However, the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.

func greed (name : String?){
    guard let unwrapped = name else {
        print("Provide a name")
        return
    }
    print("asdasd \(unwrapped)")
}
greed(name: nil)

// 4- Force unwrapping
// str to int creates optional int. the ! at the end force unwrapp
//They don't need unwrapp
//If fails code will crash. 2. name crash operator
var str = "5"
var sayi = Int(str)!


// 5- Implicitly unwrapped optionals
// Variable starts nil but it will change before you use it
// code can crash

var number : Int! = nil


// 6 - Nil coalescing
// unwrapps optional with a default value value can't be nil

func username (for id : Int) -> String? {
    if id == 1 {
        return "Batuhan"
    }else{
        return nil
    }
}
 let user = username(for: 2) ?? "Default value"


// 7 - Optional chaining
// something like a.b?.c if there is value on b it will continue else it will stop

let names = ["John", "Paul", "George", "Ringo"]

let someone = names.first?.uppercased()


// 8 - Optional try
// try? or try! if we know the result will be certain.


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Valid pass")
}else{
    print("Unlucky")
}

try! checkPassword("secrit")
print("ok")


// 9 - Failable initializers

struct Person {
    var id : String
    
    init?(id : String) {
        if id.count == 9 {
            self.id = id
        }else{
            return nil
        }
    }
}
var batuhan = Person(id: "Batuhan")


// 10 - Typecasting

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
