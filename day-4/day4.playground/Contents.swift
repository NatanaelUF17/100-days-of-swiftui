import UIKit

// 1. For loops
let count = 1...10

for number in count {
    print("Number is: \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}

// 2. While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// 3. Repeat loops
var num = 1

repeat {
    print(num)
    num += 1
} while num <= 20
            
print("Ready or not, here I come!")

let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
    
} while random == numbers

// 4. Existing loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

print("Blast off!")

let scores = [1, 8, 4, 3, 0, 5, 2]
var counter = 0

for score in scores {
    if score == 0 {
        break
    }
    
    counter += 1
}

print("You had \(count) scores before you get 0.")

// 5. Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10  {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// 6. Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// 7. Infinite loops
var myCounter = 0

while true {
    print(" ")
    myCounter += 1
    
    if myCounter == 273 {
        break
    }
}

