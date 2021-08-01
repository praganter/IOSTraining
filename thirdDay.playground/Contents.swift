import UIKit

// 1- Arithmetic operators
// Already known

// 2- Operator Overloading
// Using for joining strings array etc.Already known


// 3- Compound assignment operators
//Already known += , -= , /= etc.


// 4- Comparison operators
//Already known. == , != , < , > etc.


// 5 - Conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// 6- Combining conditions
// Already known.


// 7- The ternary operator
//One line if
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}


// 8 - Switch statements
//default statement is must if all scenarios not covered.
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}


// 9- Range operators
// ..< or ...
let score = 85
switch score {
case 0...50:
    print("Meh")
case 50..<85:
    print("Ok")
default:
    print("Great")
}

