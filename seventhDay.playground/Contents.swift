import UIKit

// 1- Using closures as parameters when they accept parameters
func travel(action : (String) -> Void){
    print("I am ready!")
    action("Muğla")
    print("I arrived")
}

travel { (destination : String) in
    print("I am on my way to \(destination)")
}

// 2- Using closures as parameters when they return values
func travel1(action : (String) -> String){
    print("I am ready!")
    let destination = action("İzmir")
    print(destination)
    print("I arrived")
}
travel1 { (road : String) -> String in
    return "I am on my way to \(road)"
}

// 3 - Shorthand parameter names
//If there is one line of code in closure swift knows it is return line so no need to mention return.
//Swift know from function return type of function also parameters
func travel2(action : (String)->String){
    print("I am ready!")
    let destination = action("Edirne")
    print(destination)
    print("I arrived")
}
travel2 {
    "I am on my way to \($0)"
}
travel2{ place in
    "I am on my way to \(place)"
}


/// 4- Closures with multiple parameters
func travel3(action : (String , Int) -> String){
    print("I am ready!")
    let destination = action("Edirne",130)
    print(destination)
    print("I arrived")
}

travel3 {
        "I am goint to \($0) with spped of \($1)"
}


// 5- Returning closures from functions
func travel4() -> (String) -> Void{
    return{
        print("Returning closure with given string which is = \($0)")
    }
}
let result = travel4()
result("İzmir")
//below line not recomended
let result2 = travel4()("Fethiye")


// 6 - Capturing values
func travel5() -> (String) -> Void{
    let counter = 0
    return {
        print("Counter will be captures even it is not inside the closure counter = \(counter) also destination is = \($0)")
    }
}
let result3 = travel5()
result3("Kaz Dağları")
