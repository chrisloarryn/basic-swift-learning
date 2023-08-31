import Foundation

//--------------//
// Collections //
//------------//

// Sets: unordered collection of unique values/objects.
var sports = Set<String>()
print("sports set = \(sports)")

// adding
sports.insert("Soccer")
sports.insert("Basketball")
sports.insert("Baseball")
print("sports = \(sports)")

if sports.contains("Soccer") {
    print("Sports contains Soccer")
}

// removing
sports.remove("Baseball")
print("sports = \(sports.count)")

sports = ["Football", "Hockey", "Lacrosse"]
print("sports = \(sports.count)")

// empty check
if sports.isEmpty {
    print("sports set is empty")
}

// iteration
// sorted vs. unsorted
print("unsorted set elements")
for sport in sports {
    print("sport = \(sport)")
}

print("sorted set elements")
for sport in sports.sorted() {
    print("sport = \(sport)")
}

// operations
// - union
// - intersection
// - subtracting
// - symmetricDifference
let oddNumbers: Set<Int> = [1,3,5,7,9]
let evenNumbers: Set<Int> = [2,4,6,8]
let primeNumbers: Set<Int> = [1,3,5,7]

let unionSet = oddNumbers.union(evenNumbers)
print("union set = \(unionSet)")

let intersection = oddNumbers.intersection(evenNumbers)
print("intersection set = \(intersection)")

let subtraction = oddNumbers.subtracting(primeNumbers)
print("subtraction set = \(subtraction)")

let symmetricDifferences = primeNumbers.symmetricDifference(oddNumbers)
print("symmetricDifferences set = \(symmetricDifferences)")

// set membership and equality
// - subset
// - superset
// - equality
// - strict subset
// - struct superset
// let isSubset = oddNumbers.isSubset(of: evenNumbers) // false
let isSubset = primeNumbers.isSubset(of: oddNumbers) // true
print("isSubset = \(isSubset)")

let isSuperset = primeNumbers.isSuperset(of: evenNumbers) // false
print("isSuperset = \(isSuperset)")

let isDisjoint = primeNumbers.isDisjoint(with: evenNumbers) // true
print("isDisjoint = \(isDisjoint)")

let set1: Set<Int> = [1,2,3]
let set2: Set<Int> = [1,2,3]

if set1 == set2 {
    print("two sets are equal")
}

if set1.isSubset(of: set2) {
    print("\(set1) is SubSet of \(set2)")
}

let isStrictSuperset = oddNumbers.isStrictSuperset(of: primeNumbers)
print("isStrictSuperset = \(isStrictSuperset)")

let isStrictSubset = primeNumbers.isStrictSubset(of: oddNumbers)
print("isStrictSubset = \(isStrictSubset)")


/// set of stings
var courses = Set<String>()

courses.insert("Data Structures & Algorithms")
courses.insert("Databases")
courses.insert("Design Patterns")

courses.remove("Databases")
courses

for course in courses {
    print("course = \(course)")
}



class Exercise {
    // Implement a function that adds takes an array of strings (e.g. fruit names) and adds inserts it into a set. The function then should return the new set.
    static func createSet(from array: [String]) -> Set<String> {
        return Set<String>(array)
    }
    
    // Implement a function that takes an integer parameter and a set parameter. The function should return true if the set parameter contains the integer parameter, and it returns false otherwise.
    static func contains(value: Int, in integerSet: Set<Int>) -> Bool {
        return integerSet.contains(value)
    }
    
    // Implement a function that takes two parameters: a set of Double numbers and a value to remove from that set. The function creates a new set out of the input set and removes the value from the set. The function then returns a new set.
    static func remove(value: Double, from inputSet: Set<Double>) -> Set<Double> {
        var mySet = inputSet
        let newArr = mySet.remove(value)
        return mySet
    }
    
    // Implement a function that takes one parameter: a set of Strings. The function checks whether the set is empty. If it is empty, then it returns true, otherwise it returns false.
    static func isSetEmpty(setToCheck: Set<String>) -> Bool {
        return setToCheck.isEmpty
    }
    
    // Implement a function that takes one parameter a set of Strings. The set in Swift keeps elements in an unsorted fashion. The function should sort the elements, iterate over the elements, print each element and return an array of sorted Strings.
    static func prepareSortedSetContent(from unsortedSet: Set<String>) -> [String] {
        return unsortedSet.sorted()
    }
}

let arrayOfStrings = ["first","second","three","three"]
let arrayOfIntegers = [1,2,3,1]

let createdSet = Exercise.createSet(from: arrayOfStrings)

let integersSet = Set<Int>(arrayOfIntegers)
let existsInSet1 = Exercise.contains(value: arrayOfIntegers[0], in: integersSet) // true
let existsInSet2 = Exercise.contains(value: 20, in: integersSet) // false

// check string set
let isStringSetEmpty1 = Exercise.isSetEmpty(setToCheck: createdSet) // false
let isStringSetEmpty2 = Exercise.isSetEmpty(setToCheck: Set<String>()) // true

let orderedStringArray1 = Exercise.prepareSortedSetContent(from: createdSet)

let removeDoubleFromSet = Exercise.remove(value: 1.5, from: Set<Double>([1.1,1.5]))



