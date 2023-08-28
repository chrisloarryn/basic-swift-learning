import UIKit

var greeting = "Hello, playground"

print(greeting)

// let == constants
var name = "Jason"
name = "Amy"

var weight = 100
var additionalWeight = 50
weight += additionalWeight

// weight = weight * additionalWeight
weight *= additionalWeight
weight = weight / additionalWeight

var lastName: String = "Smith"
// lastName = 10 // not

var age: Int = 10
age = Int(5.3) * age


     // --------------- //
    //  Strings        //
   //---------------- //

// multitasking string
print("multi line string")

var address = """
123 MAin St
Apt. 483
Mainville, CA
"""

print(address)
print("-------------")

print("Unicode based characters")
///
let specialDays = "\u{29}\u{2680}"
print(specialDays)
print("-------------")


print("Multi line vs extended delimiters")
/// multi line vs extended delimiters
address = "124 Oak St. \nOakville, CA"
print(address)
address = #"124 Oak St. \nOakville, CA"#
print("-------------")

/// Empty checks
let emptyName = String()

if emptyName.isEmpty {
    print("emptyName is Empty")
}

print("-------------")

print("String Concatenation")
/// String concatenation
var sentence = "We are learning"
sentence += " Swift Programming Language"
print(sentence)
print("-------------")

let part2 = "world"
var str = "hello"

var concatenated = str + part2

///Iteration over characters in a string
for char in sentence {
    print(char)
}
print("-------------")

/// Single character
let singleCharacter: Character = "A"

/// Collection / array of characters
let arrayOfCharacters: [Character] = ["A","n","i","m","a","l"]
var charactersStr = String(arrayOfCharacters)

/// Concatenate character to a string
let questionMark: Character = "?"
charactersStr.append(questionMark)

print("characterStr = \(charactersStr)")

/// Interpolation of string
let animalCount = 5
print("There are \(animalCount) animals in the park.")
print("-------------")

/// Swift String & Character are fully Unicode compliant
/// Extended grapheme cluster is a sequence of one or more Unicode scalars, e.g. \u{E9}
/// Character: a single extended grapheme cluster
let eAcute: Character = "\u{E9}"                        // é
let combinedEAcute: Character = "\u{65}\u{301}"         // e followed by
let precomposed: Character = "\u{D55C}"                 // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"  // 한

/// String Indices
var continent = "North America"
let startIndex = continent.startIndex
print(continent[startIndex])
print("-------------")

let endIndex = continent.endIndex
print("end index = \(endIndex)")
print("-------------")

let beforeIndex = continent.index(before: endIndex)

print("-------------")
let afterIndex = continent.index(after: startIndex)
print("afterIndex = \(afterIndex)")

print("-------------");
let offsetIndex = continent.index(startIndex, offsetBy: 3)
print("offsetIndex = \(offsetIndex)")

print("-------------")
print("Iterate over continent using indices")
for index in continent.indices {
    print("\(continent[index])")
}
print("-------------")

print("Insert character at the end of the continet string")

continent.insert(":", at: continent.endIndex)
print("\(continent)")
print("-------------")

print("Remove character at the end of the continet string")
continent.remove(at: continent.index(before: continent.endIndex))
print("\(continent)")
print("-------------")

print("String rangesr")
let range = continent.index(continent.endIndex, offsetBy: -4)..<continent.endIndex

continent.removeSubrange(range)
print("\(continent)")
print("-------------")

/// Substrings
/// Substrings and String both conform to String Protocol
/// and share similar functions.
print("-------------")
print("substring")
let index = continent.firstIndex(of: " ") ?? continent.endIndex
print("\(index)")
let continetSubstring = continent[..<index]
print("\(continetSubstring)")
let newString = String(continent)
print("\(newString)")
print("-------------")

/// Comparison of strings
///
/// String and character
print(String("String and character comparison").lowercased())
let string1 = "North America"
let string2 = "North America"

if string1 == string2 {
    print("\(string1) and \(string2 ) are equal")
}
print("-------------")

let cafe1 = "caf\u{E9}"
let cafe2 = "caf\u{65}\u{301}"
if cafe1 == cafe2 {
    print("both \(cafe1) and \(cafe2) are equal")
}
print("-------------")

/// Prefix equality
print("prefix and suffix comparison")
let countries = [
    "Ireland",
    "Italy",
    "France",
    "Germany",
    "Uruguay",
    "United States of America",
    "United Kingdom",
    "United Arab Emirates",
    "Chile"
]

for country in countries {
    let prefix = "United"
    if country.hasPrefix(prefix) {
        print("\(country) has prefix \(prefix)")
    }
    
    let suffix = "America"
    if country.hasSuffix(suffix) {
        print("\(country) has suffix \(suffix)")
    }
}
print("-------------")

print("unicode representation")
for codeUnit in continent.utf8 {
    print("\(codeUnit)")
}
print("-------------")
print("-------------")
print("-------------")
print("-------------")
print("-------------")
print("-------------")
