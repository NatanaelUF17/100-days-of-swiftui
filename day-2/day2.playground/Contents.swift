import UIKit

// 1. Arrays
let cristiano = "Cristiano Ronaldo"
let messi = "Leo Messi"
let maradona = "Diego Armando Maradona"

let soccerPlayers = [cristiano, messi, maradona]

soccerPlayers[0]

let bestSoccerPlayer = "The best soccer player of all time is \(soccerPlayers[0])!!"

// 2. Sets
let soccerTeams = Set(["Real Madrid", "F.C Barcelona", "Manchester United", "Liverpool F.C"])
let otherSoccerTeams = Set(["Bayern Múnich", "Borussia Dortmund", "Benfica", "Paris Saint Germain", "Benfica"])

if soccerTeams.contains("Real Madrid") {
    "The best soccer team in the world!!"
}

// 3. Tuples
let fullname = (first: "Natanael", last: "Urena")
var myName = fullname.first + " " + fullname.last

let gameStatus = (win: "congratulations, you win", draw: "draw", lose: "you lost")
var gameMessage = "You finished the game. \(gameStatus.win)!"

// 4. Arrays vs Sets vs Tuples
let address = (house: 58, street: "H street", city: "San Francisco")
/*
 Note: we use tuples when we need a specific, fixec collection of related values where
 each each item has a precise position or name.
 */

let fruits = Set(["Apple", "Orange", "Strawberry", "Pineapple"])
if fruits.count > 0 {
    "There's \(fruits.count) fruits!"
}
/*
 Note: we use set when we need a collection of values that must be unique or, when we need
 to be able to check whether a specific item is in there extremely quickly.
 */

let phones = ["IPhone 13", "IPhone Xs Max", "IPhone SE"]
/*
 Note: we use arrays when we need a collection of values that can contain duplicate values
 or the order of the items matters.
 */

// 5. Dictionaries
let heights = [
    "Natanael": 1.73,
    "Cristiano Ronaldo": 1.87
]

heights["Natanael"]

let numbers = [
    0: "cero",
    1: "one",
    2: "two",
    3: "three"
]

numbers[2]

// 6. Dictionaries default values
let favoriteIceCream = [
    "Natanael": "vanilla",
    "Cristal": "strawberry"
]

favoriteIceCream["Natanael"]
favoriteIceCream["Enmanuel", default: "Unknown"]

let results = [
    "english": 100,
    "frech": 85,
    "geography": 75
]

let historyResult = results["history", default: 0]

// 7. Creating empty collections
var teams = [String: String]() // this is an empty dictionary
teams["Red"] = "Soldiers"
teams["Blue"] = "Players"

var gameResults = [Int]() // this is an empty array
gameResults.append(100)
gameResults.append(95)

var vowels = Set<String>() // this is an empty set
vowels = ["A", "E", "I", "O", "U"]

var scores = Dictionary<String, Int>() // this is another way to create an empty dictionary
scores["player1"] = 100
scores["player2"] = 200

var grades = Array<Int>() // this is another way to create an empty array
grades.append(100)
grades.append(85)
grades.append(70)

// 8. Enumerations
enum Result {
    case success
    case failure
}

let result = Result.success
let result2 = Result.failure

enum Direction {
    case north
    case south
    case east
    case west
}

let bestDirection = Direction.north
let worstDirection = Direction.south

// 9. Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "soccer")
let running = Activity.running(destination: "Santo Domingo")

enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

let windy = Weather.windy(speed: 90)
let rainy = Weather.rainy(chance: 23, amount: 50)

// 10. Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)
let venus = Planet(rawValue: 2)

enum Mood: Int {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}

let happy = Mood.happy.rawValue
let sad = Mood.sad.rawValue
