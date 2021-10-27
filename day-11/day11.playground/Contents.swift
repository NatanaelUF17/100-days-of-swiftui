import UIKit

// 1. Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User : Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My ID IS \(thing.id)")
}

protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

// 2. Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTrainning {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee : Payable, NeedsTrainning, HasVacation
    { }

protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}

protocol Computer : Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol Laptop : Computer {
    var screenSize: Int { get set }
}

// 3. Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let evenNumber = 10
evenNumber.isEven

// 4. Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// 5. Protocol-oriented programming
protocol Eatable {
    var name: String { get set }
    func isEatable() -> Bool
}

extension Eatable {
    func isEatable() -> Bool {
        print("\(name) is not eatable")
        return false
    }
}

struct Beer : Eatable {
    var name: String
}

let stella = Beer(name: "Stella Artois")
stella.isEatable()

