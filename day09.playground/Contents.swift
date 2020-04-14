import UIKit

/**
 * 1. Initializers
 */
struct User {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user")
    }
}
var user = User()
user.username = "twostraws"

/**
 * 2. Referring to the current instance
 */
struct Person {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
var person = Person(name: "Héloïse")

/**
 * 3. Lazy properties
 *
 * As a performance optimization, Swift lets you create some properties only when they are needed.
 */
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

// But what if we didn’t always need the family tree for a particular person?
// If we add the lazy keyword to the familyTree property, then Swift will
// only create the FamilyTree struct when it’s first accessed:
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")

// So, if you want to see the “Creating family tree!” message, you need to
// access the property at least once:
ed.familyTree

/**
 * 4. Static properties and methods
 */
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

/**
 * 5. Access control
 */
struct Person3 {
    private var id: String
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let ed3 = Person3(id: "12345")
ed3.identify()
