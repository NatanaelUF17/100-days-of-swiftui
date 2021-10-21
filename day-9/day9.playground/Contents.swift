import UIKit

// 1. Initializers
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!!")
    }
}

var user = User()
print(user.username)

user.username = "Natanael"
print(user.username)

// 2. Referring to the current instance
struct Person {
    var name:  String
    
    init(name: String) {
        print("\(name) was born!!")
        self.name = name
    }
}

let person = Person(name: "Natanael")
print(person.name)

// 3. Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Employee {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Employee(name: "Ed")
ed.familyTree

// 4. Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var cristal = Student(name: "Cristal")
var natanael = Student(name: "Natanael")

print(cristal.name)
print(natanael.name)
print(Student.classSize)

// 5. Access control
struct Patient {
    private var medicalId: String
    
    init(medicalId: String) {
        self.medicalId = medicalId
    }
    
    func getMedicalId() -> String {
        return self.medicalId
    }
}

let jose = Patient(medicalId: "12345")
print(jose.getMedicalId())
