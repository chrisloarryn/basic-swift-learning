import Foundation

  //-------------//
 // Collections //
//-------------//

// Arrays - ordered colections of values

// Array<Element> and [Element] both funtionally identical
var cities: Array<String> = []
// other variation of declaring an empty array  
var cities2 = [String]()
var districts: [String] = ["District 1", "District 2", "District 3", "District 4"]

print("there are \(cities.count) cities in the array")
print("there are \(districts.count) districts in the array")

cities.append("London")
cities.append("Paris")
cities.append("New York")

print("\(cities)")

print("--------------------")

var streets = Array(repeating: "h", count: 4)
print("there are \(streets.count) streets in the array")
print("\(streets)")

print("--------------------")

var result = cities + streets + districts

print("\(result)")

// array literal
// array type is inferred to be [String]
var vegetables = ["tomato", "cucumber", "lettuce", "carrot"]

print("\(vegetables)")

if vegetables.isEmpty {
		print("there are no vegetables")
} else {
		print("there are \(vegetables.count) vegetables")
}

vegetables.append("potato")
print("\(vegetables) - with potato appended")
vegetables += ["onion", "garlic"]
print("\(vegetables) - with onion and garlic appended")

print("--------------------")
print("--------------------")
if let first = vegetables.first {
	print("\(first) - first vegetable")
}
if let last = vegetables.last {
	print("\(last) - last vegetable")
}
print("--------------------")
print("--------------------")

let firstVegetable = vegetables.removeFirst()
print("\(vegetables) - with first vegetable removed")
print("\(firstVegetable) - first vegetable removed")

// the following removes the last element and returns it but the next example only show the last element
let lastVegetable = vegetables.removeLast()
//let lastElementItem = vegetables.popLast()
print("\(vegetables) - with last vegetable removed")
print("\(lastVegetable) - last vegetable removed")
print("--------------------") 

print("\(vegetables) - with last element only shown") // count and -1 because of out of bounds 
let lastElementItem = vegetables[vegetables.count - 1]
print("\(lastElementItem) - last element item")

let thisIsTheFirstElement = vegetables[0]
print("\(thisIsTheFirstElement) - first element item")

print("--------------------")
print("--------------------")

vegetables[0...3] = ["potato", "onion", "garlic", "carroto"]
print("\(vegetables) - with first 6 elements replaced")

print("--------------------")

/// Insertion
vegetables.insert("carrot", at: 2)
print("\(vegetables) - with carrot inserted at index 2")

/// Removing
vegetables.remove(at: 3)
print("\(vegetables) - with element at index 3 removed")

/// Iterating
for (index, vegetable) in vegetables.enumerated() {
	print("Vegetable \(vegetable) for index \(index)")
} 


class Exercise {
    //1. Implement a function that takes in array containing integer numbers and finds the sum of all elements in the array.
    static func findSum(from array: [Int]) -> Int {
        return array.reduce(0, { $0 + $1 })
        // return array.reduce(0) { $0 + $1.count }
    }
    
    //2. Implement a function that takes in array containing strings and returns the sorted array.
    static func sort(array: [String]) -> [String] {
        return array.sorted(by: { $0 < $1 })
    }
}

let myIntegerArray = [1,2,3]
let myIntegerArray2 = [4,5,6]
let myStringArray = ["hello", "dinosaur"]

let sumOfNumbers = Exercise.findSum(from: myIntegerArray)
let sortedNumbers = Exercise.sort(array: myStringArray)


class Exercise2 {
    //1. Implement a function that takes two arrays containing numbers and returns a single array containing content of both arrays.
    static func merge(array1: [Int], array2: [Int]) -> [Int] {
        return array1 + array2
    }
    
    //2. Implement a function that takes in array and returns the biggest element in the array.
    static func findMaxElement(in array: [Int]) -> Int? {
        return array.max()
    }
}

let myMergedArrays = Exercise2.merge(array1: myIntegerArray, array2: myIntegerArray2)
let myMaxNumber = Exercise2.findMaxElement(in: myIntegerArray2)


class Exercise3 {
    //1. Implement a function that takes in array and returns the smallest element in the array.
    static func findMinElement(in array: [Int]) -> Int? {
        return array.min()
    }
    
    //2. Implement a function that finds whether an element exists in the array.
    static func isElement(element: Int, presentIn array: [Int]) -> Bool {
        if let found = array.firstIndex(where: { $0 == element }) {
            return true
        }
        return false
    }
}

let myMinimumNumber = Exercise2.findMaxElement(in: myIntegerArray2)
let myNumberInArray = Exercise3.isElement(element: 5, presentIn: myIntegerArray2)
