/**
 * 100 days of SwiftUI - Day 8
 * https://www.hackingwithswift.com/100/swiftui/8
 */
import UIKit

// How to provide default values for parameters
// https://www.hackingwithswift.com/quick-start/beginners/how-to-provide-default-values-for-parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//characters.removeAll()
characters.removeAll(keepingCapacity: true)
print(characters.count)

// How to handle errors in functions
// https://www.hackingwithswift.com/quick-start/beginners/how-to-handle-errors-in-functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

do {
    let result2 = try checkPassword(string)
    print("Password rating: \(result2)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Checkpoint 4
// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-4
enum MathError: Error {
    case outOfBound, noRoot
}

func sqrtInteger(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw MathError.outOfBound
    }
    
    for i in 1..<number {
        let result = i * i
        if result > number {
            break
        }
        
        if i * i == number {
            return i
        }
    }
    
    throw MathError.noRoot
}

do {
    print(try sqrtInteger(10_000))
} catch MathError.outOfBound {
    print("Out of bound")
} catch MathError.noRoot {
    print("No root")
}
    
