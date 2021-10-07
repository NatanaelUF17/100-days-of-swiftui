import UIKit

// 1. Writing functions
func printHelp() {
    let message = """
        Welcome to MyApp!
        
        Run this app inside a directory of images and
        MyApp will resize them into thumbnails
    """
    
    print(message)
}

printHelp()

// 2. Accepting parameters
func square(number: Int) {
    print(number * number)
}

square(number: 8)

func greeting(name: String) {
    print("Greetings my friend \(name)!!")
}

greeting(name: "Natanael")

// 3. Returning values
func returningSquare(number: Int) -> Int {
    return number * number
}

let squareResult = returningSquare(number: 8)
print(squareResult)

func returningGreeting(name: String) -> String {
    return "Greetings my friend \(name)!!"
}

print(returningGreeting(name: "Natanael"))

// 4. Parameters labels
func squareParameterLabel(number toSquare: Int) -> Int {
    return toSquare * toSquare
}

let squareParameterResult = squareParameterLabel(number: 8)
print(squareParameterResult)

func greetingParameterLabel(to name: String) -> String {
    return "Greetings my friend \(name)!!"
}

print(greetingParameterLabel(to: "Natanael"))

// 5. Omitting parameter labels
func squareOmittingParameter(_ number: Int) {
    print(number * number)
}

squareOmittingParameter(8)

func greetingOmittingParameter(_ name: String) {
    print("Greetings my friend \(name)!!")
}

greetingOmittingParameter("Natanael")

// 6. Default parameters
func squareDefaultParameter(_ number: Int, isEven: Bool = true) {
    let result = number * number
    
    if isEven {
        print("\(number) * \(number): \(result) and the input number is even")
    } else {
        print("\(number) * \(number): \(result) and the input number is odd")
    }
}

squareDefaultParameter(7, isEven: false)
squareDefaultParameter(8)

func greetingDefaultParameter(_ name: String, isNicely: Bool = false) {
    if isNicely {
        print("Greetings my friend \(name), you are a really nice person!!")
    } else {
        print("Hello \(name), are you going to discuss with me again?")
    }
}

greetingDefaultParameter("Natanael", isNicely: true)
greetingDefaultParameter("Mike")

// 7. Variadic functions
func squareMultipleNumbers(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareMultipleNumbers(numbers: 1, 2, 3, 4, 5, 6, 7, 8)

func greetingMultiplePersons(persons names: String...) {
    for name in names {
        print("Greetings my friend \(name)!!")
    }
}

greetingMultiplePersons(persons: "Natanael", "Cristal", "Mike", "Nathaly")

// 8. Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

// 9. Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!!")
} catch {
    print("You can't use that password")
}

// 10. Inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

print(myNum)
