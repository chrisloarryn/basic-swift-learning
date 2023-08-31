import UIKit

//----------------//
// Control Flows //
//--------------//
// Control Flows: Switch

var temperatureInC = -10 // 15 // 20

switch condition {
    case
}

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
