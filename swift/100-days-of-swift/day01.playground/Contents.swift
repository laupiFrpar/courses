import UIKit

/**
 * 1. Variables
 */
var str = "Hello, playground"
str = "Goodbye"

/**
 * 2. Strings and Integers
 */
var age = 40
var population = 60_000_000

/**
 * 3. Mulit-line strings
 */
var str1 = """
This goes
over multiple
lines
"""

// If I want only multi-line strings to format my code neatly, and I don't want
// those line breaks to actually be in your string
var str2 = """
This goes \
over multiple \
lines
"""

/**
 * 4. Doubles and booleans
 */
var pi = 3.141
var awesome = true

/**
 * 5. String interpolation
 */
var score = 85
var strScore = "Your score was \(score)"
var results = "The test results are here: \(strScore)"

/**
 * 6. Constants
 */
let taylor = "swift"

// Uncomment the following line to try to change the constant
// taylor = "launay"

/**
 * 7. Type annotations
 */
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

