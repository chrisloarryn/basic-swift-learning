import Foundation

// Switches

var age = 30

switch age {
case 0...2:
	print("Infant")
case 3...12:
	print("Child")
case 13...19:
	print("Teenager")
case 20...39:
	print("Adult")
case 40...60:
	print("Middle aged")
case let x where x > 60:
	print("Elderly")
default:
	print("Invalid age")
}

var someCharacter: Character = "e"

switch someCharacter {
case "a", "e", "i", "o", "u":
	print("Vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
	"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
	print("Consonant")
default:
	print("Not a vowel or a consonant")
}

var direction: Compass = Compass.north
direction = .east

func getDirection(whichWay: Compass) -> Compass {
	switch whichWay {
	case .north:
		return .south
	case .south:
		return .north
	case .east:
		return .west
	case .west:
		return .east
	}
}	

enum FurColor {
    case black, brown, white, gold, spotted, brindle, merle
}

struct Dog {
	var name: String
	var age: Int
	var furColor: FurColor = .black

	func bark() {
        print("Woof!")
	}

    func describe() {
		print("I'm \(name), I'm \(age) years old and I have \(furColor) fur.")
    }

	mutating func birthday() {
		age += 1
	}

	mutating func changeName(newName: String) {
		name = newName
	}

	mutating func changeAge(newAge: Int) {
		age = newAge
	}

	mutating func changeFurColor(newFurColor: FurColor) {
		furColor = newFurColor
	}
}

var dog = Dog(name: "Fido", age: 8, furColor: .brown)
dog.bark()

var dog2 = Dog(name: "Rover", age: 2)
dog2.describe() // I'm Rover, I'm 2 years old and I have black fur.

dog2.changeName(newName: "Spot")
dog2.changeAge(newAge: 3)
