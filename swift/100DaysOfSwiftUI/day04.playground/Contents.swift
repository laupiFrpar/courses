/**
 * 100 days of SwiftUI - Day 04
 * https://www.hackingwithswift.com/100/swiftui/4
 */
import UIKit

// How to use type annotations
// https://www.hackingwithswift.com/quick-start/beginners/how-to-use-type-annotations
let surname: String = "Lasso"
var score: Int = 0

let playerName: String = "Roy" // String
var luckyNumber: Int = 13 // Integer
let pi: Double = 3.141 // Decimal
var isAuthenticated: Bool = true // Boolean
var albums: [String] = ["Red", "Fearless"] // Array of String
var user: [String: String] = ["id": "@twostraws"] // Dictionary
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"]) // Set

var teams: [String] = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light // Enum

// Checkpoint
// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-2
let family: [String] = ["Dad", "Mom", "Héloïse", "Félix", "Timothée"]
print(family.count)
print(Set(family).count)
