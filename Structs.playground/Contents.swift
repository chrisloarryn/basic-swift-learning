import Foundation

// Structs

struct Dog {
	var name = ""
	var age = 0
	var furColor = ""

	func bark() {
		print("Woof!")
	}

	func describe() {
		print("I'm \(name), I'm \(age) years old and I have \(furColor) fur.")
	}
}

var dog = Dog(name: "Fido", age: 8, furColor: "Black")
dog.bark()
dog.describe() // I'm Fido, I'm 8 years old and I have Black fur.


struct HeadPhone {
	var Color: String
	var Brand: String

	func describe() {
		print("I'm \(Color) and I'm made by \(Brand).")
	}
}

var headPhone = HeadPhone(Color: "Black", Brand: "Beats")
print(headPhone.Color)
print(headPhone.Brand)
headPhone.describe() // I'm Black and I'm made by Beats.