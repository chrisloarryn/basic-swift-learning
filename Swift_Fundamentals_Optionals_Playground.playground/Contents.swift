import UIKit

//----------------//
// Control Flows //
//--------------//
// Optionals

var name: String?

name = "Alice"

// Conditional Unwrapping
if let name = name {
    print("name = \(name)")
}

func testGuardOptional() {
    // conditional unwrapping
    guard let value = name else {
        print("could not unwrap name var")
        return
    }
    
    print("unwrapped name = \(value)")
}

testGuardOptional()

// Force unwrapping
print("force unwrapped optional = \(name!)")

// Optional chaining
print("optional name langth = \(name?.count)")

// Conditional unwrapping
if let lengthOfName = name?.count {
    print("length of name unwrapped = \(lengthOfName)")
}

// Nil coalesed unwrapping
let lengthOfNameNilCoalesed = name?.count ?? 0
print("lengthOfNameNilCoalesed = \(lengthOfNameNilCoalesed)")
