import UIKit

/**
 * 1. Creating your own classes
 */
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

/**
 * 2. Class inheritance
 */
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

/**
 * 3. Overidding methods
 */
class Poodle2: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}
let poppy2 = Poodle2(name: "Poppy")
poppy2.makeNoise()

/**
 * 4. Final classes
 */
final class Dog2 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = name
    }
}

/**
 * 5. Copying objects
 */
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

/**
 * 6. Deinitializers
 */
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

/**
 * 7. Mutability
 */
let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

