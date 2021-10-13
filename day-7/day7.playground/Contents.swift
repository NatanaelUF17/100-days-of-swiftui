import UIKit
import Foundation

// 1. Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car!")
}

// 2. Using closures as parameters when they return values
func traveling(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!!")
}

traveling { (place: String) -> String in
    return "I'm going to \(place) in my car."
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    
    // start with a total equal to the first value
    var current = values[0]
    
    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        /*
            call our closure with the current value and the array element,
            assigning its result to our current value
         */
        current = closure(current, value);
    }
    
    // send back the final current value
    return current
}

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

let sum2 = reduce(numbers, using: +)

let multiply = reduce(numbers) { (firstValue, nextValue) in
    firstValue * nextValue
}

print(sum)
print(sum2)
print(multiply)

// 3. Shorthand parameter names
func travelingAgain(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!!")
}

travelingAgain() { place in
    "I'm going to \(place) in my car"
}

// 4. Closures with multiple parameters
func run(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("New York City", 25)
    print(description)
    print("I arrived!!")
}

run { place, speed in
    "I'm running to \(place) at \(speed) kilometers per hour"
}

// 5. Returning closures from functions
func walk() -> (String) -> Void {
    return { place in
        print("I'm walking to \(place)")
    }
}

let result = walk()
result("Manchester")

/*
 It’s technically allowable – although really not recommended!
 */
let result2 = walk()("Manchester")

// 7. Capturing values
func fly() -> (String) -> Void {
    
    var counter = 1
    
    return {
        print("\(counter). I'm flying to \($0)")
        counter += 1
    }
}

let flyResult = fly()
flyResult("London")
flyResult("Dominican Republic")
flyResult("Boston")

func makeRandomNumberGenerator() -> () -> Int {
    return {
        var previousNumber = 0
        var newNumber: Int
        
        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber
        
        previousNumber = newNumber
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
