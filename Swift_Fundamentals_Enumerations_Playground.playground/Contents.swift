import UIKit

//---------------//
// Enumerations //
//-------------//
// Astructure that groups related values together
// Type safe
// case can have Int, String, Double, Float type

enum Color: Double {
    case red
    case green
    case blue
}

var color: Color = .red

switch color {
case .red:
    break
default:
    break
}
