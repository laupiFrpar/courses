/**
 * 100 days of SwiftUI - Day 11
 * https://www.hackingwithswift.com/100/swiftui/11
 */
import UIKit

// How to limit access to internal data using access control
// https://www.hackingwithswift.com/quick-start/beginners/how-to-limit-access-to-internal-data-using-access-control
struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// Static properties and methods
// https://www.hackingwithswift.com/quick-start/beginners/static-properties-and-methods
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

// Checkpoint 6
// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-6
struct Car {
    let model: String
    let seats: Int
    let maximumGears: Int
    private(set) var gear = 1
    
    init (model: String, seats: Int, maximumGears: Int) {
        self.model = model
        self.seats = seats
        self.maximumGears = maximumGears
    }
    
    mutating func changeGear(difference: Int) {
        gear = gear + difference
        
        if gear < 1 {
            gear = 1
        } else if gear > maximumGears {
            gear = maximumGears
        }
    }
}

var car = Car(model: "BMW X3", seats: 5, maximumGears: 8)
car.changeGear(difference: -5)
print(car.gear)
