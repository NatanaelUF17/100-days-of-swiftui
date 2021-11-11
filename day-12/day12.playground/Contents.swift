import UIKit

// 1. Handling missing data
var age: Int? = nil
age = 17
print(age!)

// 2. Unwrapping optionals
var name: String? = nil
name = "Natanael"

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name")
}

func getName() -> String? {
    "Taylor"
}

if let name = getName() {
    print("Username is \(name)")
} else {
    print("No username")
}

// 3. Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

greet("Natanael")

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func showMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }
    
    print(name)
}

// 4. Force unwrapping
let str = "5"
let num = Int(str)!

// 5. Implicity unwrapped optionals
let snake: String! = nil
let myBirthday: Date! = nil
let count: Int! = nil

// 6. Nil coalescing
func getUsername(for id: Int) -> String? {
    if id == 1 {
        return "Natanael Urena"
    } else {
        return nil
    }
}

let user = getUsername(for: 15) ?? "Anonymous"

// 7. Optional chaining
let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased()

let someNames = [
    "Vincent": "van Gogh",
    "Pablo": "Picasso",
    "Claude": "Monet"
]

let surnameLetter = someNames["Vincent"]?.first?.uppercased() ?? "?"

// 8. Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

// 9. Failable initializers
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

struct Employee {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}

let tim = Employee(username: "TimC", password: "app1e")
let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")

// 10. Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

class Persons {
    var name = "Anonymous"
}

class Customers: Persons {
    var id = 12345
}

class Employees: Persons {
    var salary = 50_000
}

let customer = Customers()
let employee = Employees()
let people = [customer, employee]

for person in people {
    if let customer = person as? Customers {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employees {
        print("I'm an employee, earning $\(employee.salary)")
    }
}
