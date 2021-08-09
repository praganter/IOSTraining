import UIKit

// 1- Creating your own structs
struct Sport {
    var name : String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Table tennis"
print(tennis.name)

// 2- Computed properties
struct Sport1 {
    var name : String
    var isOlympicSport : Bool
    var olympicStatus : String{
        if isOlympicSport {
            return "\(name) is olympic sport"
        }else{
            return "\(name) is not an olmpic sport"
        }
    }
}
var chessBoxing = Sport1(name: "ChessBoxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// 3- Property observers
//didSet do something after data changed. willSet will do task before data changed.
struct Progress{
    var task : String
    var amount : Int{
        didSet {
            print("\(task) named task's progress in \(amount)% percent ")
        }
    }
}
var proggress = Progress(task: "Loading", amount: 0)
proggress.amount = 15
proggress.amount = 45
proggress.amount = 60


// 4- Methods
struct City {
    var population : Int
    
    func GetTax() -> Int {
        return (population * 100)
    }
}
var edirne = City(population: 200)
print(edirne.GetTax())

// 5- Mutating Method
//Using for changing the property of struct via method

struct Angarali{
    var name : String
    mutating func sanatciDegistir(_ newName : String) {
        name = newName
    }
}
var sanatci = Angarali(name: "Turgut")
sanatci.sanatciDegistir("Namık")
print(sanatci.name)


// 6- Properties and methods of strings
//strings are structs
var string = "Kafam almıyor vedanı, unutamadım sevdanı"
print(string.count)
print(string.description)
print(string.uppercased())
print(string.hasPrefix("Kafam"))


// 7- Properties and methods of arrays
var toys = ["Woody"]
toys.append("Buzz")
toys.count
toys.firstIndex(of: "Buzz")
toys.removeAll()


struct User {
    var name = "Anonymous"
    var age: Int
}
let twostraws = User(name: "Paul", age: 38)
twostraws.name
