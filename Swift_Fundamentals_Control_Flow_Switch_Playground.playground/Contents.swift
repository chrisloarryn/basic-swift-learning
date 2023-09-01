import UIKit

//----------------//
// Control Flows //
//--------------//
// Control Flows: Switch

var temperatureInC = -10 // 15 // 20

while (temperatureInC < 40) {
    if temperatureInC < 0 {
        print("It's really cold today! \(temperatureInC)")
    } else if temperatureInC > 0 && temperatureInC < 20 {
        print("It's little warmer today! \(temperatureInC)")
    } else {
        print("It's very warm \(temperatureInC)")
    }
    temperatureInC += 3
}

while (temperatureInC < 40) {
    switch temperatureInC {
    case ..<0:
        print("It's really cold today! \(temperatureInC) C")
    case 0..<20:
        print("It's little warm today! \(temperatureInC) C")
    default:
        print("It's very warm! \(temperatureInC) C")
    }
    temperatureInC += 3
}

let character: Character = "a"
switch character {
case "a":
    print("character is latin alphabet character \(character)")
case "B":
    print("character is upper case latin letter \(character)")
default:
    print("any other character \(character)")
}


// switch statement tuples
// tuple: (Int, Int)
let coordinate = (6, 4)
switch coordinate {
case (0,0):
    print("the coordinate origin point")
case (_, 0):
    print("the coordinate is on x axis")
case (0, _):
    print("the coordinate is on y axis")
default:
    print("the coordinate is no in x or y")
}

// value binding
switch coordinate {
case (0,0):
    print("the coordinate origin point")
case (let x, 0):
    print("the coordinate is on x axis \(x)")
case (0, let y):
    print("the coordinate is on y axis \(y)")
default:
    print("the coordinate is no in x or y")
}

// where clause
switch coordinate {
case (let x, let y) where x > y:
    print("x > y")
case (let x, let y) where x < y:
    print("x < y")
default:
    print("the coordinate is no in x or y")
}


// compound cases
let characterB: Character = "a"
switch characterB {
case "a", "A":
    print("letter a \(characterB)")
case "B", "b":
    print("letter b \(characterB)")
default:
    print("any other character \(characterB)")
}

// fallthrough
switch characterB {
case "a", "A", "c", "C":
    print("character matched")
    fallthrough
case "B", "b":
    print("letter \(characterB)")
default:
    print("any other character \(characterB)")
}
