import UIKit

// 1. Creating your own classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Coco", breed: "Shitzu")
print("\(poppy.name) is a \(poppy.breed)")

// 2. Class inheritance
class Poodle : Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poodle = Poodle(name: "Coco")
print("\(poodle.name) is a \(poodle.breed)")

// 3. Overriding methods
class Bird {
    func canFlyOverseas() {
        print("Birds can fly overseas!")
    }
}

class Eagle : Bird {
    override func canFlyOverseas() {
        print("Eagles cant fly overseas!")
    }
}

let bird = Eagle()
bird.canFlyOverseas()

// 4. Final classes

/* note: final classes are ones that cannot be inherited from */
final class Square {
    var a: Int
    var b: Int
    
    init() {
        self.a = 4
        self.b = 16
    }
}

// 5. Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

// 6. Deinitializers
class Person {
    var name = "Natanael"
    
    init() {
        print("\(name) is alive")
    }
    
    deinit {
        print("\(name) is no more!!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// 7. Mutability
class Food {
    var typeOfFood = "Meat"
}

let food = Food()
food.typeOfFood = "Cereal"
print(food.typeOfFood)
