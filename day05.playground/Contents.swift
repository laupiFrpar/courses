import UIKit

/**
 * 1. Writing functions
 */
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}
printHelp()

/**
 * 2. Accepting parameters
 */
func square(number: Int) {
    print(number * number)
}

square(number: 8)

/**
 * 3. Returning values
 */
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

/**
 * 4. Parameter labels
 *
 * Swift lets us provide two names for each parameter: one to be used externally when calling the function,
 * and one to be used internally inside the function. This is as simple as writing two names, separated by a
 * space.
 */
func sayHello(to name: String) {
    print("Hello \(name)!")
}

// The parameter is called to name, which means externally it’s called to, but
// internally it’s called name. This gives variables a sensible name inside the
// function, but means calling the function reads naturally:
sayHello(to: "Taylor")

/**
 * 5. Omitting parameter labels
 *
 * You might have noticed that we don’t actually send any parameter names when we call print() – we say
 * print("Hello") rather than print(message: "Hello").
 *
 * You can get this same behavior in your own functions by using an underscore, _, for your external
 * parameter name, like this:
 */
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

// This can make some code more natural to read, but generally it’s better to
// give your parameters external names to avoid confusion. For example, if I
// say setAlarm(5) it’s hard to tell what that means – does it set an alarm for
// five o’clock, set an alarm for five hours from now, or activate
// pre-configured alarm number 5?

/**
 * 6. Default parameters
 */
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)

/**
 * 7. Variadic functions
 *
 * Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the
 * same type. The print() function is actually variadic: if you pass lots of parameters, they are all printed on
 * one line with spaces between them:
 */
print("Haters", "gonna", "hate")

// You can make any parameter variadic by writing ... after its type. So, an
// Int parameter is a single integer, whereas Int... is zero or more integers –
// potentially hundreds.
//
// Inside the function, Swift converts the values that were passed in to an
// array of integers, so you can loop over them as needed.
func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1, 2, 3, 4, 5)

/**
 * 8. Writing throwing functions
 *
 * First we need to define an enum that describes the errors we can throw. These must always be based on
 * Swift’s existing Error type. We’re going to write a function that checks whether a password is good, so we’ll
 * throw an error if the user tries an obvious password:
 */
enum PasswordError: Error {
    case obvious
}

// This means using the throws keyword before the function’s return value, then
// using throw PasswordError.obvious if their password is “password”.
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

/**
 * 9. Running throwing functions
 *
 * Swift doesn’t like errors to happen when your program runs, which means it won’t let you run an
 * error-throwing function by accident.
 *
 * Instead, you need to call these functions using three new keywords: do starts a section of code that might
 * cause problems, try is used before every function that might throw an error, and catch lets you handle
 * errors gracefully.
 */
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

/**
 * 10. inout parameters
 *
 * All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can
 * pass in one or more parameters as inout, which means they can be changed inside your function, and
 * those changes reflect in the original value outside the function.
 */
func doubleInPlace(number: inout Int) {
    number *= 2
}

// To use that, you first need to make a variable integer – you can’t use
// constant integers with inout, because they might be changed. You also need
// to pass the parameter to doubleInPlace using an ampersand, &, before its
// name, which is an explicit recognition that you’re aware it is being used as
// inout.
var myNum = 10
doubleInPlace(number: &myNum)
