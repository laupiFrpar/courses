import UIKit

/**
 * 1. Arithmetic operators
 */
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

/**
 * 2. Operator overloading
 *
 * Remember, Swift is a type-safe language, which means it won’t let you mix types. For example, you can’t
 * add an integer to a string because it doesn’t make any sense.
 */
let meaningOfLife = 42
let doubleMeaning = 42 + 42

// + also joins strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

// + join arrays
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

/**
 * 3. Compound assignment operators
 *
 * Swift has shorthand operators that combine one operator with an assignment, so you can change a
 * variable in place. These look like the existing operators you know – +, -, *, and /, but they have an = on the
 * end because they assign the result back to whatever variable you were using.
 */
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

/**
 * 4. Comparison operators
 */
firstScore == secondScore
firstScore != secondScore
firstScore < secondScore
firstScore >= secondScore

// Each of these also work with strings, because strings have a natural
// alphabetical order
"Taylor" <= "Swift"

/**
 * 5. Conditions
 */
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

/**
 * 6. Combining conditions
 */
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

/**
 * 7. Ternary operators
 */
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

/**
 * 8. Switch statements
 */
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Swift will only run the code inside each case. If you want execution to
// continue on to the next case, use the fallthrough keyword like this:
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

/**
 * 9. Range operators
 *
 * Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range
 * operator, ..<, creates ranges up to but excluding the final value, and the
 * closed range operator, ..., creates ranges up to and including the final
 * value.
 *
 * For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas
 * the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
 *
 * Ranges are helpful with switch blocks, because you can use them for each of
 * your cases. For example, if someone sat an exam we could print different
 * messages depending on their score:
 */
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
