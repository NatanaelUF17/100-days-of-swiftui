import UIKit

// 1. Arithmetic operators
let firstScore = 25
let secondScore = 15

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let reminder = firstScore % secondScore

// 2. Operator overloading
let meaningOfLife = 42
let doubleMeaningOfLife = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]

let beatles = firstHalf + secondHalf

// 3. Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// 4. Comparison operators
let taylorAge = 21
let chrisAge = 24

taylorAge == chrisAge
taylorAge != chrisAge

taylorAge < chrisAge
taylorAge >= chrisAge

"Taylor" <= "Swift"

// 5. Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// 6. Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// 7. The ternary operator
let firstValue = 11
let secondValue = 10
print(firstValue == secondValue ? "Cards are the same" : "Cards are different")

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

// 8. Switch statements
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

// 9. Range operators
let points = 85

switch points {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names[1...3])
