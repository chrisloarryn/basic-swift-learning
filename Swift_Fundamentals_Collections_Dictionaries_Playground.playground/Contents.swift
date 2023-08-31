import Foundation

//--------------//
// Collections //
//------------//
// Dictionary: unordered collection af key value pairs.

var studetIdName: Dictionary<Int, String> = [:]
var zipCodeDiscrict: [Int: String] = [:]

zipCodeDiscrict = [90001: "Main", 80001: "Downtown"]

// access
studetIdName[1] = "Thomson"
studetIdName[2] = "Jason"
studetIdName[3] = "Jane"

print("studetIdName = \(studetIdName)")
print("zipCodeDiscrict = \(zipCodeDiscrict)")


// modify
zipCodeDiscrict[90001] = "Oakville"
print("zipCodeDiscrict = \(zipCodeDiscrict)")

if let oldValue = zipCodeDiscrict.updateValue("Cityville",
                                              forKey: 80001) {
    print("old value has been reeplaced \(oldValue)")
}


// remove
zipCodeDiscrict[80001] = nil
print("zipCodeDiscrict = \(zipCodeDiscrict)")

let oldValue = zipCodeDiscrict.removeValue(forKey: 90001)
print("oldValue = \(String(describing: oldValue))")

print("zipCodeDiscrict = \(zipCodeDiscrict)")

// iteration
for (key, value) in studetIdName {
    print("key = \(key), value = \(value)")
}

// iteration unsorted
for key in studetIdName.keys {
    print("key = \(key)")
}

for values in studetIdName.values {
    print("values = \(values)")
}

// iteration sorted
for key in studetIdName.keys.sorted() {
    print("key = \(key)")
}

for values in studetIdName.values.sorted() {
    print("values = \(values)")
}


/// Exercise

class Exercise {
    
    // Implement a function that takes an array of string elements as a parameter.
    // The array will contain city names. The array may contain duplicates.
    // The function should return a dictionary.
    // The dictionary key should be String, the value should be Int.
    // The key of the dictionary will be a city name and the value will be the number of times the city name appeared in the array.
    static func createDictionary(from array: [String]) -> [String: Int] {
        var dictionary: [String: Int] = [:]

        for city in array {
            if let count = dictionary[city] {
                dictionary[city] = count + 1
            } else {
                dictionary[city] = 1
            }
        }

        return dictionary
    }
    
    // Implement a function that takes a dictionary where a key is String and value is an integer.
    // The function also takes another parameter which corresponds to the key of the dictionary
    // that you will need to remove from the dictionary. The function should return the updated dictionary.
    static func remove(key: String, from dictionary: [String: Int]) -> [String: Int] {
        var dictionary = dictionary
        dictionary.removeValue(forKey: key)
        return dictionary
    }
}



let arrayNamesRepeated = ["nomu","nomu","macaco","mono","macaco","mono"]
let keyValuePair = Exercise.createDictionary(from: arrayNamesRepeated)

var dictionaryToRemove: [String: Int] = [:]

dictionaryToRemove["hello"] = 1
dictionaryToRemove["world"] = 1
dictionaryToRemove["peluca"] = 5

dictionaryToRemove
let dict = Exercise.remove(key: "peluca", from: dictionaryToRemove)
dict


class Exercise2 {
    // Implement a function that takes a dictionary as a parameter.
    // The dictionary keys are String and values are Int.
    // The function should return an array containing all the keys of the dictionary.
    // The returned array should be sorted.
    static func getAllSortedKeys(of dictionary: [String: Int]) -> [String] {
        return dictionary.keys.sorted()
    }
    
    // Implement a function that takes a dictionary as a parameter.
    // The dictionary keys are String and values are Int.
    // The function should return an array containing all the values of the dictionary.
    // The returned array should be sorted.
    static func getAllSortedValues(of dictionary: [String: Int]) -> [Int] {
        return dictionary.values.sorted()
    }
}


let arraySortedKeys = Exercise2.getAllSortedKeys(of: dictionaryToRemove)
let arraySortedValues = Exercise2.getAllSortedKeys(of: dictionaryToRemove)
