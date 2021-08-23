import UIKit


// 1- Protocols
//Protocols are a way of describing what properties and methods something must have

protocol Identififiable {
    var id : String {get set}
}
struct User : Identififiable {
    var id: String
}
func displayId(thing : Identififiable) {
    print("ID of a thing is \(thing)")
}

// 2 - Protocol Inharicance
//protocols can inherite from another protocols also more than 1

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Emlployee : Payable, HasVacation, NeedsTraining {
    
}

// 3- Extensions
//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.

extension Int {
    func squared() -> Int {
        return self * self
    }
}
var edge = 4
edge.squared()

extension Int {
    func isEven() -> Bool {
        return self % 2 == 0
    }
}
edge.isEven()

// 4 - Protocol extensions
//Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// 5- Protocol-oriented programming


protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Userr: Identifiable {
    var id: String
}

let praganter = Userr(id: "praganter")
praganter.identify()
