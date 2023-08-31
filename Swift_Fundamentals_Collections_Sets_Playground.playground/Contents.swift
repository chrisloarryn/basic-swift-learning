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


class Exercise2 {
    
    // Implement a function that takes two parameters: one set containing positive integers and another set containing negative integers. The function should merge two sets (i.e. union) and return it a result.
    static func createUnion(of positiveNumbersSet: Set<Int>, and negativeNumberSet: Set<Int>) -> Set<Int> {
        return positiveNumbersSet.union(negativeNumberSet)
    }
    
    // Implement a function that takes two parameters: city names A and city names B. The function should find out intersection of two sets and return it as a result.
    static func findIntersection(of citiesA: Set<String>, and citiesB: Set<String>) -> Set<String> {
        return citiesA.intersection(citiesB)
    }
    
    // Implement a function that takes two parameters: employees and friends. The function should subtract two sets in order to remove content of friends set from the employees set. The function then returns the result.
    static func findSubtraction(of employees: Set<String>, and friends: Set<String>) -> Set<String> {
        return employees.subtracting(friends)
    }
    
    // Implement a function that takes two set A and B as parameters. Sets contain numbers. The function should calculate the symmetric difference between sets and return it as a result.
    static func findSymmetricDifference(of setA: Set<Int>, and setB: Set<Int>) -> Set<Int> {
        return setA.symmetricDifference(setB)
    }
}

let possitiveNumbersArray = [1,2,3]
let negativeNumbersArray = [-1,-2,-3]
let possitiveNumbers = Set<Int>(possitiveNumbersArray)
let negativeNumbers = Set<Int>(negativeNumbersArray)
// first
let unionResult = Exercise2.createUnion(of: possitiveNumbers, and: negativeNumbers)

let citiesAArray = ["peumo", "rancagua"]
let citiesBArray = ["san vicente", "peumo", "rengo"]

let citiesSetA = Set<String>(citiesAArray)
let citiesSetB = Set<String>(citiesBArray)
// second
let intersectionResult = Exercise2.findIntersection(of: citiesSetA, and: citiesSetB)


let employeeArray = ["Larry","Damian","Doroty"]
let friendsArray = ["Larry","Damian","Doroty","Juan","Jean","John"]

let employeeSet = Set<String>(employeeArray)
let friendsSet = Set<String>(friendsArray)
let subtractionExercise2 = Exercise2.findSubtraction(of: employeeSet, and: friendsSet)
print("subtraction = \(subtraction)")


let setAToArray = [1,2,8,5,6]
let setBToArray = [1,2,8,5,6,7]

let setAFromArray = Set<Int>(setAToArray)
let setBFromArray = Set<Int>(setBToArray)
let symmetricFound = Exercise2.findSymmetricDifference(of: setAFromArray, and: setBFromArray)

print("symmetricFound = \(symmetricFound)")
symmetricFound


///
///

class Exercise3 {
    // Implement a function that takes 2 set parameters: set A and set B. The function should check whether set A is a subset of set B and return the result as a boolean value.
    static func checkIf(setA: Set<Int>, subSetOf setB: Set<Int>) -> Bool {
        return setA.isSubset(of: setB)
    }
    
    // Implement a function that takes 2 set parameters: set A and set B. The function should check whether set A is a superset of set B and returns the result as a boolean value.
    static func checkIf(setA: Set<Int>, supersetOf setB: Set<Int>) -> Bool {
        return setA.isSuperset(of: setB)
    }
    
    // Implement a function that takes 2 set parameters: set A and set B. The function should return true if both sets are equal, false otherwise.
    static func checkIf(setA: Set<String>, equalTo setB: Set<String>) -> Bool {
        return setA == setB
    }
    
    // Implement a function that takes 2 set parameters: set A and set B. The function should return true if there is no common elements between two sets (i.e. the sets are disjoint), false otherwise.
    static func checkIf(setA: Set<String>, isDisjointWith setB: Set<String>) -> Bool {
        return setA.isDisjoint(with: setB)
    }
    
    // Implement a function that takes 2 set parameters: set A and set B. The function should return true if set A is a strict super set of set B, false otherwise.
    static func checkIf(setA: Set<Int>, isStrictSupersetOf setB: Set<Int>) -> Bool {
        return setA.isStrictSuperset(of: setB)
    }
    
    // Implement a function that takes 2 set parameters: set A and set B. The function should return true if set A is a strict subset of set B, false otherwise.
    static func checkIf(setA: Set<Int>, isStrictSubsetOf setB: Set<Int>) -> Bool {
        return setA.isStrictSubset(of: setB)
    }
}

let integerFirstArrayGroup = [2,5,8,9,4]
let integerSecondArrayGroup = [4,5,6,10,2,8,9]
let stringFirstArrayGroup = ["string one","string two","string three"]
let stringSecondArrayGroup = ["string two","string three","string one", "string four"]

let integerSetFirst = Set<Int>(integerFirstArrayGroup)
let integerSetSecond = Set<Int>(integerSecondArrayGroup)
let stringSetFirst = Set<String>(stringFirstArrayGroup)
let stringSetSecond = Set<String>(stringSecondArrayGroup)

let checkIfSubset = Exercise3.checkIf(setA: integerSetFirst, subSetOf: integerSetSecond)
let checkIfSuperset = Exercise3.checkIf(setA: integerSetFirst, supersetOf: integerSetSecond)
let checkIfSetsAreEqual = Exercise3.checkIf(setA: stringSetFirst, equalTo: stringSetSecond)
let checkIfSetsAreDisjoint = Exercise3.checkIf(setA: stringSetFirst, isDisjointWith: stringSetSecond)
let checkIfFirstSetIsSupersetOfSecond = Exercise3.checkIf(setA: integerSetFirst, isStrictSupersetOf: integerSetSecond)
let checkIfFirstSetIsSubsetOfSecond = Exercise3.checkIf(setA: integerSetFirst, isStrictSubsetOf: integerSetSecond)

print("checkIfSubset = \(checkIfSubset)") // one
print("checkIfSuperset = \(checkIfSuperset)") // two
print("checkIfSetsAreEqual = \(checkIfSetsAreEqual)") // three
print("checkIfSetsAreDisjoint = \(checkIfSetsAreDisjoint)") // four
print("checkIfFirstSetIsSupersetOfSecond = \(checkIfFirstSetIsSupersetOfSecond)") // five
print("checkIfFirstSetIsSubsetOfSecond = \(checkIfFirstSetIsSubsetOfSecond)") // six


