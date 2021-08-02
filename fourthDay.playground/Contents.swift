import UIKit


// 1- For loop
let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// 2 - While loop
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

// 3 - Repeat loops
repeat {
    print(number)
    number += 1
} while number <= 20

// 4- Exiting loops
// Break keyword already known. If loop inside a loop (called nested loop) breaks inner loop


// 5- Exiting multiple loops
// Give name for outer loop and break it
outerLoop : for i in 1...10 {
    for j in 1...10 {
        print("\(i) * \(j) = \(i*j)")
        if i*j == 80 {
            break outerLoop
        }
    }
}


// 6- Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}


// 7- Infinite loops
//Already known. While true
