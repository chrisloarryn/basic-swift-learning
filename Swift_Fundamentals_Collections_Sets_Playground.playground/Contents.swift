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

let unionSet = oddNumbers.union(evenNumbers)

