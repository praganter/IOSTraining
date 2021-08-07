import UIKit
//Using as completion handlers like url acitons loading data from external service
//1 - Creating basic closures
//creates a nameless func and assign it.
let test = {
    print("Test output")
}
test()


// 2- Accepting parameters in a closure
let driving = {
    (place :String ) in
    print("Driving to \(place)")
}
driving("İstanbul")


// 3- Returning values from closure
let flying = {(place:String) -> String in
    return "I am flying to \(place)"
}
flying("Edirne")

// 4- Closures as parameters
func travel(action : () -> Void){
    print("I am ready to go !")
    action()
    print("I arrived")
}
travel(action: test)

// 5- Trailing closure syntax
//use for last parameter
travel {
    print("I gave that aciton with triling closure syntax")
}
