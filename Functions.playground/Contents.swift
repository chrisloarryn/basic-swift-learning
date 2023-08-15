import Foundation

// Functions

func hello() {
    print("Hello fam!")
}

func helloPerson(person: String) {
    print("Hello \(person)!")
}

func sumNumbers(numbers: Int...) -> Int {
    var total = 0
    for num in numbers {
        total += num
    }
    return total
}

func sumNumbersReduce(_ numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

let randomNumbers = [1, 2, 3, 4]
var sum: Int = sumNumbersReduce(randomNumbers)
print(sum)

func printMachine(text: String, times: Int) {
    for _ in 0..<times {
        print(text)
    }
}


hello()
helloPerson(person: "Pedro")


printMachine(text: "I Love Swift Programming Language >.<", times: 4)
