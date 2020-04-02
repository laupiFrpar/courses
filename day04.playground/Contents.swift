import UIKit

/**
 * 1. For loops
 */
let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// If you don’t use the constant that for loops give you, you should use an
// underscore instead so that Swift doesn’t create needless values
print("Players gonna")
for _ in 1...5 {
    print("play")
}

/**
 * 2. While loops
 */
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

/**
 * 3. Repeat loops
 *
 * The third way of writing loops is not commonly used, but it’s so simple to learn we might as well cover it:
 * it’s called the repeat loop, and it’s identical to a while loop except the condition to check comes at the end.
 */
number = 1
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

/**
 * 4. Existing loops
 */
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now")
        break
    }
    countDown -= 1
}

print("Blast off!")

/**
 * 5. Existing multiple loops
 *
 * If we wanted to exit part-way through we need to do two things.
 *
 * 1. we give the outside loop a label like outerLoop
 * 2. add our condition inside the inner loop, then use break outerLoop to exit both loops at the same time:
 */
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye")
            break outerLoop
        }
    }
}

/**
 * 6. Skipping items
 */
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

/**
 * 7. Infinite loops
 */
var counter = 0
while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
