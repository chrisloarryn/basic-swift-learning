import Foundation

// Classes

class Dog {
	var name: String = ""
	var age: Int = 0
	var furColor: String = ""

	func bark() {
		print("Woof!")
	}

	func describe() {
		print("I'm \(name), I'm \(age) years old and I have \(furColor) fur.")
	}

	func birthday() {
		age += 1
	}

	func changeName(newName: String) {
		name = newName
	}

	func changeAge(newAge: Int) {
		age = newAge
	}

	func changeFurColor(newFurColor: String) {
		furColor = newFurColor
	}

	func changeAll(name: String, age: Int, furColor: String) {
		changeName(newName: name)
		changeAge(newAge: age)
		changeFurColor(newFurColor: furColor)
	}

	init(name: String, age: Int, furColor: String) {
		self.name = name
		self.age = age
		self.furColor = furColor
	}

	init() {
		name = "Dog"
		age = 0
		furColor = "Brown"
	}

	deinit {
		print("Goodbye!")
	}
}

var dog = Dog(name: "Fido", age: 8, furColor: "Black")
dog.bark()

var dog2 = Dog()
dog2.describe()
dog2.changeAll(name: "Rover", age: 3, furColor: "White")
dog2.describe()

dog2.birthday()
dog2.describe()

class Poodle: Dog {
	func dance() {
		print("Dancing!")
	}

	override func bark() {
		print("Yip!")
	}
}

var poodle = Poodle(name: "Poodle", age: 2, furColor: "White")
poodle.bark()
poodle.dance()
