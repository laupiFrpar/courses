import UIKit

/**
 * 1. Handling missing data
 */
var age: Int? = nil
age = 38

/**
 * 2. Unwrapping optionals
 */
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

/**
 * 3. Unwrapping with guard
 *
 * An alternative to if let is guard let, which also unwraps optionals. guard let will unwrap an optional for you,
 * but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.
 *
 * However, the major difference between if let and guard let is that your unwrapped optional remains usable
 * after the guard code.
 *
 * Using guard let lets you deal with problems at the start of your functions, then exit immediately. This
 * means the rest of your function is the happy path – the path your code takes if everything is correct.
 */
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print ("You did'nt provide a name!")
        return
    }
    
    print("Hello \(unwrapped)!")
}
greet(name)

/**
 * 4. Force unwrapping
 *
 * Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t
 * nil. In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a
 * non-optional type.
 */
let str = "5"

// Even though Swift isn’t sure the conversion will work, you can see the code
// is safe so you can force unwrap the result by writing ! after Int(str), like
// this:
let num = Int(str)!

// But if you’re wrong – if str was something that couldn’t be converted to an
// integer – your code will crash.

/**
 * 5. Implicitly unwrapped optionals
 *
 * Like regular optionals, implicitly unwrapped optionals might contain a value or they might be nil. However,
 * unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they
 * weren’t optional at all.
 *
 * Implicitly unwrapped optionals are created by adding an exclamation mark after your type name, like this:
 */
let age2: Int! = nil

// Because they behave as if they were already unwrapped, you don’t need if let
// or guard let to use implicitly unwrapped optionals. However, if you try to
// use them and they have no value – if they are nil – your code crashes.

// Implicitly unwrapped optionals exist because sometimes a variable will start
// life as nil, but will always have a value before you need to use it. Because
// you know they will have a value by the time you need them, it’s helpful not
// having to write if let all the time.

/**
 * 6. Nil coalescing
 *
 * The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a
 * value – if the optional was nil – then a default value is used instead. Either way, the result won’t be
 * optional: it will either by the value from inside the optional or the default value used as a back up.
 *
 * Here’s a function that accepts an integer as its only parameter and returns an optional string:
 */
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

// If we call that with ID 15 we’ll get back nil because the user isn’t
// recognized, but with nil coalescing we can provide a default value of
// “Anonymous” like this:
let user = username(for: 15) ?? "Anonymous"

/**
 * 7. Optional chaining
 *
 * Swift provides us with a shortcut when using optionals: if you want to access something like a.b.c and b is
 * optional, you can write a question mark after it to enable optional chaining: a.b?.c.
 *
 * When that code is run, Swift will check whether b has a value, and if it’s nil the rest of the line will be
 * ignored – Swift will return nil immediately. But if it has a value, it will be unwrapped and execution will
 * continue.
 */
let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased()

/**
 * 8. Optional try
 */
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

// The other alternative is try!, which you can use when you know for sure that
// the function will not fail. If the function does throw an error, your code
// will crash.
//
// Using try! we can rewrite the code to this:
try! checkPassword("sekrit")
print("OK!")

/**
 * 9. Failable initializers
 *
 * This is a failable initializer: an initializer that might work or might not. You can write these in your own
 * structs and classes by using init?() rather than init(), and return nil if something goes wrong. The return
 * value will then be an optional of your type, for you to unwrap however you want.
 */
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

/**
 * 10. Typecasting
 */
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
