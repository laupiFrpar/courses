/**
 * 100 days of SwiftUI - Day 13
 * https://www.hackingwithswift.com/100/swiftui/13
 */
import UIKit

// How to create and use protocols
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-protocols
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

let car = Car()
commute(distance: 100, using: car)

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}
getTravelEstimates(using: [car, bike], distance: 150)

// How to use opaque return types
// https://www.hackingwithswift.com/quick-start/beginners/how-to-use-opaque-return-types
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

// How to create and use extensions
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-extensions
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()
//quote.trim()
print(quote)

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed3 = trim(quote)

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178)


// How to create and use protocol extensions
// https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-protocol-extensions
let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

// Checkpoint 8
// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-8
protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get set }
    var type: String { get }
    
    func describe()
}

extension Building {
    func describe() {
        print("Talk to \(estateAgent) to buy this \(type) for $\(cost)")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    let type = "house"
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    let type = "office"
}

let exampleHouse = House(rooms: 4, cost: 500_000, estateAgent: "Swift & Co")
exampleHouse.describe()

let exampleOffice = Office(rooms: 30, cost: 12_000_000, estateAgent: "Taytay Inc")
exampleOffice.describe()

