import Foundation

// Optionals

var age: String? = nil

var name: String? = "Nick"

// ok
age = "30"

// cannot be done
var realAge = Int(age) * 2

// cannot be done.
var intName = Int(name)


// could be done, but with REALLY carefully. (!)
var realAge = Int(age!) * 2


if age != nil {
    print(age!)
}



// optionals works like in Go, let me show the next eg
if let oldAge = Int("40") {
    print(oldAge)
}

// at this point ald age do not exist.
print(oldAge)
