import Foundation

// Enums

enum Compass {
	case north
	case south
	case east
	case west
}

enum Planet {
	case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
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
dog2.changeFurColor(newFurColor: .spotted)
dog2.describe() // I'm Spot, I'm 3 years old and I have spotted fur.