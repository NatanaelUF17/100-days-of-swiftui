import UIKit

// 1. Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

// 2. Accepting parameters in a closure
let walking = { (place: String) in
    print("Walking to \(place)")
}

walking("Dominican Republic")

// 3. Returning values from a closure
let running = { (place: String) -> String in
    return "Running to save my life to \(place)"
}

let message = running("my house")
print(message)

// 4. Closures as parameters
let flying = {
    print("I'm flying to Canada")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I landed!")
}

travel(action: flying)

// 5. Trailing closure syntax
func traveling(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

traveling {
    print("I'm driving in my car")
}
