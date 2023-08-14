import Foundation

// Dictionaries

var nickWords: [String:String] = [
    "zabang": "when you finally get your code right",
    "hooha": "When you've been coding for 3 hours and still can't find out what's wrong"
]

nickWords["zabang"]


var dogsAge: [String:Int] = [
    "Fido": 4,
    "Jane": 4,
    "Sean": 4
]

dogsAge["Joe"] = 7

dogsAge

dogsAge.removeValue(forKey: "Fido")
dogsAge.removeValue(forKey: "Sean")

dogsAge
