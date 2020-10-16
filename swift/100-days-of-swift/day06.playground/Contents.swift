import UIKit

/**
 * 1. Creating basic closures
 */
let driving = {
    print("I'm driving in my car")
}

driving()

/**
 * 2. Accepting parameters in a closure
 */
let drivingTo = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingTo("London")

/**
 * 3. Returning values from a closure
 */
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

/**
 * 4. Closures as parameters
 */
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: driving)

/**
 * 5. Trailing closure syntax
 *
 * If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure
 * syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside
 * braces.
 *
 * Because its last parameter is a closure, we can call travel() using trailing closure syntax like this:
 *
 * travel() {
 *  print("I'm driving in my car")
 * }
 *
 *Trailing closure syntax is extremely common in Swift, so it’s worth getting used to.
 *In fact, because there aren’t any other parameters, we can eliminate the parentheses entirely:
 */
travel {
    print("I'm driving in my car")
}
