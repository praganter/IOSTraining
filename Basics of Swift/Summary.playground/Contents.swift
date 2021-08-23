import UIKit

//types of Data
//Float can hold only most important 7 numbers.
// Double is more precise than float if number is big

var sayi : Float
sayi = 123123.123123123
sayi = 123.123123
sayi = 1234567.999999

///Dictionaries

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

//LOOPS
// if we use continue it will jump to loop and skip that step

var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}
