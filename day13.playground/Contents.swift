import UIKit

/**
 * 1. Variables and constants
 */
var name = "Tim McGraw"
name = "Romeo"

let name2 = "Tim McGraw"
// name2 = "Romeo"

// var name = "Romeo"

/**
 * 2. Types of Data
 */
var name3: String
name3 = "Tim McGraw"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
//var longitude: Double
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

// For the sake of completeness, I should add that it's possible to specify a
// data type and provide a value at the same time, like this:
var name4: String = "Tim McGraw"

/**
 * 3. Operators
 */
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = c + d

var name5 = "Tim McGraw"
var name6 = "Romeo"
var both = name5 + " and " + name6

var f = 1.1
var g = 2.2
var h = f + g

h > 3
h >= 3
h > 4
h < 4
name5 == "Tim McGraw"

stayOutTooLate
!stayOutTooLate

name5 != "Tim McGraw"

/**
 * 4. String interpolation
 */
"Your name is \(name5)"
"Your name is " + name5

"Your name is \(name5), your age is \(age), and your latitude is \(latitude)"

/**
 * 5. Arrays
 */
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]
type(of: songs)

// If you really want the array to hold any kind of data, use the special Any
// data type, like this:
var songs2: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

var songs3: [String] = []

// You'll also commonly see this construct:
var songs4 = [String]()
var both2 = songs3 + songs2
both2 += ["Everything has Changed"]

/**
 * 6. Dictionnaries
 */
var person = [
    "first": "Taylor",
    "middle": "Alison",
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]
person["middle"]
person["month"]

/**
 * 7. Conditional statements
 */
var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

/**
 * 8. Loops
 */
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)

for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ... 3 {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}

for song in songs {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

/**
 * 9. Switch case
 */

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}

