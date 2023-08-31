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





