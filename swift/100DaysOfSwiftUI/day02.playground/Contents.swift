/**
 * 100 days of SwiftUI - day 02
 * https://www.hackingwithswift.com/100/swiftui/2
 */
import UIKit

// How to store truth with Booleans
// https://www.hackingwithswift.com/quick-start/beginners/how-to-store-truth-with-booleans
print(filename.hasSuffix(".jpg"))
print(number.isMultiple(of: 3))
let goodDogs = true
let gameOver = false
let isMultiple = 120.isMultiple(of: 3)
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
var gameOver1 = false
print(gameOver1)
gameOver1.toggle()
print(gameOver1)

// How to join strings together
// https://www.hackingwithswift.com/quick-start/beginners/how-to-join-strings-together
let firstPart = "Hello, "
let secondPart = "world!"
let greeting1 = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number2 = 11
let missionMessage = "Apollo " + String(number2) + " landed on the moon."
let missionMessageFaster = "Apollo \(number2) landed on the moon."

print("5 x 5 is \(5 * 5)")

// Checkpoint
// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-1
let celsius = 22.0
let fahrenheit = celsius * 9 / 5 + 22
print("\(celsius)º is equal to \(fahrenheit) ºF")

