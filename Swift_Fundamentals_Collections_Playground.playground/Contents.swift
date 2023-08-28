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

vegetables[0...5] = ["potato", "onion", "garlic", "tomato", "cucumber", "lettuce"]
print("\(vegetables) - with first 6 elements replaced")

print("--------------------")

/// Insertion
vegetables.insert("carrot", at: 2)
print("\(vegetables) - with carrot inserted at index 2")

/// Removing
vegetables.remove(at: 3)
print("\(vegetables) - with element at index 3 removed")

/// Iterating
for vegetable in vegetables {
	print("Vegetable \(vegetable)")
} 