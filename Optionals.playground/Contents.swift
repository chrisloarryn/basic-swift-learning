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

// make a function that take in a String? and if it's nil, print "IT'S NIL" else print whatever it is in the string.
func printString(string: String?) {
    if let string = string {
        print(string)
    } else {
        print("IT'S NIL")
    }
}

var greeting: String? = "Hello, World!"

printString(string: greeting)
