import UIKit

//----------------//
// Control Flows //
//--------------//
// Control Flows: While Loops

var index = 0

while (index < 10) {
    index += 1
    print("index = \(index)")
}

for i in 0..<10 {
    print("i = \(i)")
}

// Control Flows: Repeat-While Loops
index = 0
repeat {
    //
    index += 2
    print("index = \(index)")
    if (index >= 10) { break }
} while (index < 20)

print("the end")
