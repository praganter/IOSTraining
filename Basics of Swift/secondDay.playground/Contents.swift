import UIKit

// 1- Array
let batuhan = "Batuhan Yetgin"
let eren = "Eren Anar"
let berrun = "Berrun Bajrami"
let leadsHome : [String] = [batuhan,eren,berrun]
print(leadsHome)
print(leadsHome[0])

// 2- SET
//First difference between array => all items must be uniqe.
//seconds difference between array => items are not stored in any order.

let colors = Set(["red","green","blue"])
let colors2 = Set(["red","green","red","blue","green"])

// 3- Tuples
//Store several values together in a single value
//Can't add or remove item from tuple
//Can not change type of items

var name = (first : "Batuhan" ,last : "Yetgin")
name.0
name.last

// 5- Dictionaries
let heights : [String : Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]


// 6 - Dictionary default value
//If given dictionary value return nothing we will see nil. We can change that nil value with default key.
let favIceCream = [
    "Batuhan" : "frigola",
    "ilayda": "magnum"]
favIceCream["ilayda"]
favIceCream["ceren"]
favIceCream["eren" , default : "Bilinmiyor"]


// 7 - CREATİNG EMPTY COLLECTİONS
//dictionary creation 2 types
var teams = [String: String]()
teams["Batuhan"] = "Türkler"
var team = Dictionary<String , String>()
//Array creation 2 types
var results = [Int]()
var result = Array<Int>()
//Set
var words = Set<String>()


// 8 - Enumerations (ENUM)
enum Result {
    case fail
    case success
}
let example = Result.fail


// 9 - Enum associated values
enum Activity {
    case running
    case talking(topic : String)
    case listening(volume : Int)
}
let example1 = Activity.talking(topic: "Football")
let example2 = Activity.listening(volume: 25)


// 10 - Enum raw values
enum Planets : Int {
    case mercury
    case venus
    case earth
    case mars
}
let dünya = Planets(rawValue: 2)
//if we assign number to case it will start there
enum Planets1 : Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let dünya1 = Planets1(rawValue: 2)
