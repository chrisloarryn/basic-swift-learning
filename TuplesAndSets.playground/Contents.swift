import Foundation

// Tuples and Sets.

var dog: (String, Int) = ("Larry", 8)

dog.0
dog.1


var luckyNumbers: [Int] = [432, 5, 324, 32, 5, 134, 21, 312]

/// we cannot assign directly an array of numbers to a Set
// var luckyNumber: Set<[Int]> = luckyNumbers

var luckyNumbersSet: Set = [432, 5, 324, 32, 5, 134, 21, 312]

luckyNumbersSet.insert(44)
luckyNumbersSet.contains(44)


// Create a set of Strings of food
var food: Set = ["Oreos", "Pizza", "Gyudon"]
food.insert("Sushi")

food

food.remove("Sushi")

food
