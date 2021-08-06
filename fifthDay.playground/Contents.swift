import UIKit

// 1-Writing function
func printHelp(){
    let message = """
Welcome to the App!
I am doing this for learn & improve my Swift knowledge!
"""
    print(message)
}

printHelp()


// 2 - Accepting parameters

func printSomething(something : String){
    print(something)
}
printSomething(something: "Batuhan Yetgin")



// 3 -Returning values
func returner(number1 : Int, number2 : Int) -> Int{
    return (number1 + number2)
}
print(returner(number1: 5, number2: 8))


// 4- Parameter labels
//Externally using "to" internallyb using "name"
func sayHello(to name : String){
    print("Hello \(name)")
}
sayHello(to: "Batuhan")


// 5- Omitting parameter labels
func tellHim(_ name : String){
    print("I told you \(name)")
}
tellHim("Batuhan")


// 6 - Default value
func greet(_ name: String, nicely : Bool = true){
    if nicely == true {
        print("Hellooğğ \(name)")
    }else{
        print("Oh no ! \(name) again")
    }
}
greet("Batuhan")
greet("eren", nicely: false)


// 7 - Variadic functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)


// 8 - Writing throwing functions

enum PasswordError : Error {
    case tooEasy
}

func Password(_ password: String) throws -> Bool{
    if password == "1234" {
        throw PasswordError.tooEasy
    }
        return true
}

// 9 - Running throwing functions
do {
    try Password("1234")
} catch {
    print("choose a better password")
}

// 10 - inout parameters
// rather than returning new value it changes old value of variable
// that funciton only accepts variables. Need to use "&" sign before variable passing to func
func DoubleNumber(_ number : inout Int){
    number *= 2
}
var number = 5
DoubleNumber(&number)
