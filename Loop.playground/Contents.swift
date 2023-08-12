import Foundation

// Arrays

var movies = [
    "Sandlot",
    "Deadpool",
    "Harry Potter Saga",
    "LEGO Movie",
]

for i in movies {
    print("Iteración \(i)")
}

for _ in 1...5 {
    print("Hello!")
}


// Make an array of your favorite numbers. Then print you favorite in order, including what number in the order it is.
// Lucky Numbers: 5, 7, 8
// 1. 5
// 2. 7
// 3. 8

let luckyNumbers = [3, 7, 13, 23, 244]

var rank = 1
for number in luckyNumbers {
    print("\(rank). \(number)")
    
    rank += 1
}


for x in 0..<luckyNumbers.count {
    print("\(x+1). \(luckyNumbers[x])"
}
