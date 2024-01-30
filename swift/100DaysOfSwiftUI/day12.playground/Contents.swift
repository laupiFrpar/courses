/**
 * 100 days of SwiftUI - Day 12
 * https://www.hackingwithswift.com/100/swiftui/12
 */
import UIKit

// How to create your own classes
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-your-own-classes
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// How to make one class inherit from another
// https://www.hackingwithswift.com/quick-start/beginners/how-to-make-one-class-inherit-from-another
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
let novall = Developer(hours: 8)
novall.printSummary()

// How to add initializers for classes
// https://www.hackingwithswift.com/quick-start/beginners/how-to-add-initializers-for-classes
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

// How to copy classes
// https://www.hackingwithswift.com/quick-start/beginners/how-to-copy-classes
class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)

// How to create a deinitializer for a class
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-a-deinitializer-for-a-class
class User2 {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
}

print()

var users = [User2]()

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// How to work with variables inside classes
// https://www.hackingwithswift.com/quick-start/beginners/how-to-work-with-variables-inside-classes

class User3 {
    var name = "Paul"
}

var user = User3()
user.name = "Taylor"
user = User3()
print(user.name)

// Checkpoint 7
// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-7
class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Wooof")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    func speak() {
        print("Meoooow")
    }
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Corgi: Dog {
    override func speak() {
        print("Waf")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Wuuuuu")
    }
}

class Persian: Cat {
    override func speak() {
        print("Miaou")
    }
}

class Lion: Cat {
    override func speak() {
        print("Aaaarrrgh")
    }
}
