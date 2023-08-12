import Foundation

// Boolean and If Statements.

var age = 34
let name = "Chris"
var isMinor: Bool = true

age = 15

if age > 18 {
    isMinor = false
}

print(isMinor ? "\(name) is minor." : "\(name) is not minor.")

print("My name is \(name), I'm \(age) years old.")

// Pick a number around, then if that number is less than 10, print "This is a single digit number"
var myNumber: Int = 5

if myNumber >= 10 {
    print("is a double digit number.")
} else if myNumber < 10 {
    print("This is a single digit number.")
}
