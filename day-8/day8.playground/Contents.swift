import UIKit

// 1. Creating your own structs
struct Sport {
    var name: String
}

var soccer = Sport(name: "Soccer")
print(soccer.name)

soccer.name = "Another type of soccer"
print(soccer.name)

// 2. Computed properties
struct User {
    var name: String
    var age: Int
    
    var canDrik: Bool {
        if age >= 21 {
            return true
        }
        return false
    }
}

let user = User(name: "Natanael", age: 22)

if user.canDrik {
    print("\(user.name) can drink like a beast!!")
} else {
    print("\(user.name) is just a baby :(")
}

// 3. Property observes
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data...", amount: 0)

progress.amount = 30
progress.amount = 80
progress.amount = 100

// 4. Methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
let taxes = london.collectTaxes()

print(taxes)

// 5. Mutating methods
struct Person {
    var name: String
    
    // because this is a mutating method, swift only will accept create an instance as a variable.
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Natanael")
person.makeAnonymous()

print(person.name)

// 6. Properties and methods of strings
let dream = "My dream is to become a really good iOS developer, using Swift and SwiftUI"
print(dream.count)
print(dream.hasPrefix("My"))
print(dream.contains("iOS"))
print(dream.uppercased())
print(dream.sorted())

// 7. Properties and methods of arrays
var soccerTeams = ["Real Madrid", "F.C Barcelona", "Manchester United"]
soccerTeams.append("Manchester City")
print(soccerTeams.count)
soccerTeams.firstIndex(of: "Manchester United") // Manchester has an index of 2
soccerTeams.remove(at: 3)
print(soccerTeams.count)
print(soccerTeams.sorted())
print(soccerTeams.startIndex)
soccerTeams.insert("Atletico Madrid", at: 3)
print(soccerTeams)
