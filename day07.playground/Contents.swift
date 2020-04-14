import UIKit

/**
 * 1. Using closures as parameters when they accept parameters
 */
func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

/**
 * 2. Using closures as parameters when they return values
 */
func travel2(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

/**
 * 3. Shortand parameters names
 *
 * However, Swift knows the parameter to that closure must be a string, so we can remove it.
 *
 * travel { place -> String in
 *  return "I'm going to \(place) in my car"
 * }
 *
 * It also knows the closure must return a string, so we can remove that.
 *
 * travel { place in
 *  return "I'm going to \(place) in my car"
 * }
 *
 * As the closure only has one line of code that must be the one that returns the value, so Swift lets us
 * remove the return keyword too
 *
 * travel2 { place in
 *  "I'm going to \(place) in my car"
 * }
 *
 * Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift
 * provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number
 * counting from 0.
 */
travel2 {
    "I'm going to \($0) in my car"
}

/**
 * 4. Closures with multiple parameters
 */
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour"
}

/**
 * 5. Returning closures from functions
 */
func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel4()
result("London")

// It’s technically allowable – although really not recommended! – to call the
// return value from travel() directly:
let result2 = travel4()("London")

/**
 * 6. Capturing values
 * Closure capturing happens if we create values in travel() that get used inside the closure. For example, we
 * might want to track how often the returned closure is called:
 */
func travel5() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

// Even though that counter variable was created inside travel(), it gets
// captured by the closure so it will still remain alive for that closure.
//
// So, if we call result("London") multiple times, the counter will go up and
// up:
let result3 = travel5()
result3("London")
result3("London")
result3("London")
