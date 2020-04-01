import UIKit

/**
 * 1. Arrays
 */
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

// Uncomment the following line to see Swift crashing if I read an item that
// doesn't exist
// beatles[9]

// To use a type annotation, arrays are written in brackets: [String], [Int],
// [Double], and [Bool]

/**
 * 2. Sets
 *
 * Sets are collections of values just like arrays, except they have two differences:
 *
 * 1. Items aren’t stored in any order; they are stored in what is effectively a random order.
 * 2. No item can appear twice in a set; all items must be unique.
 */
let colors = Set(["red", "green", "blue"])

// Duplicated valuse are ignored
let colors2 = Set(["red", "green", "blue", "red", "blue"])

/**
 * 3. Tuples
 *
 * Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples
 * are different:
 *
 * 1. You can’t add or remove items from a tuple; they are fixed in size.
 * 2. You can’t change the type of items in a tuple; they always have the same types they were created with.
 * 3, You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you
 * read numbers or names that don’t exist.
 */
let name = (first: "Taylor", last: "Swift")
name.0
name.first

/**
 * 4. Arrays vs Sets vs Tuples
 *
 * Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to
 * use, here are some rules.
 *
 * 1. If you need a specific, fixed collection of related values where each item has a precise position or name,
 * you should use a tuple
 */
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

/**
 * 2. If you need a collection of values that must be unique or you need to be able to check whether a specific
 * item is in there extremely quickly, you should use a set:
 */
let set = Set(["aardvak", "astronaut", "azalea"])

/**
 * 3. If you need a collection of values that can contain duplicates, or the order of your items matters, you
 * should use an array
 */
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

/**
 * 5. Dictionaries
 *
 * Dictionaries are collections of values just like arrays, but rather than storing things with an integer position
 * you can access them using anything you want.
 *
 * When using type annotations, dictionaries are written in brackets with a colon between your identifier and
 * value types. For example, [String: Double] and [String: String].
 */
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

/**
 * 6. Dictionary default values
 *
 * If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil –
 * nothing at all. While this might be what you want, there’s an alternative: we can provide the dictionary with
 * a default value to use if we request a missing key.
 */
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

/**
 * 7. Creating empty collections
 *
 * Arrays, sets, and dictionaries are called collections, because they collect values together in one place.
 * If you want to create an empty collection just write its type followed by opening and closing parentheses
 */
var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()

// The exception is creating an empty set, which is done differently:
var words = Set<String>()
var numbers = Set<Int>()

// This is because Swift has special syntax only for dictionaries and arrays;
// other types must use angle bracket syntax like sets.
// If you wanted, you could create arrays and dictionaries with similar syntax:
var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

/**
 * 8. Enumerations
 *
 * Enumerations – usually called just enums – are a way of defining groups of related values in a way that
 * makes them easier to use.
 */
var result1 = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}
let result4 = Result.failure

/**
 * 9. Enum associated values
 */
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

/**
 * 10. Enum raw values
 *
 * Sometimes you need to be able to assign values to enums so they have meaning. This lets you create
 * them dynamically, and also use them in different ways.
 *
 * For example, you might create a Planet enum that stores integer values for each of its cases:
 */
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

// Swift will automatically assign each of those a number starting from 0, and
// you can use that number to create an instance of the appropriate enum case.
// For example, earth will be given the number 2, so you can write this:
let earth = Planet(rawValue: 2)

// If you want, you can assign one or more cases a specific value, and Swift
// will generate the rest. It’s not very natural for us to think of Earth as
// the second planet, so you could write this:
enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth2 = Planet2(rawValue: 3)
