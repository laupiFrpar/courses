/**
 * 100 days of Swift UI - Day 01
 * https://www.hackingwithswift.com/100/swiftui/1
 */
import UIKit

var greeting = "Hello, playground"

// How to create variables and constants
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-variables-and-constants
var name = "Ted"
name = "Rebecca"
name = "Keeley"

// If you don’t ever want to change a value, you need to use a constant instead.
let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// How to create strings
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."
let movie = """
A day in
the life of an
Apple engineer
"""
print(actor.count)
let nameLength = actor.count
print(nameLength)
print(result.uppercased())
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))

// How to store whole numbers
// https://www.hackingwithswift.com/quick-start/beginners/how-to-store-whole-numbers
let score = 10
let realityBig = 100000000
let realityBig2 = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter = counter + 5
counter += 5
print(counter)

counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// How to store decimal numbers
// https://www.hackingwithswift.com/quick-start/beginners/how-to-store-decimal-numbers
let number1 = 0.1 + 0.2
print(number1)
let a = 1
let b = 2.0
let c = a + Int(b)
let d = Double(a) + b
let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3
var rating = 5.0
rating *= 2
