import Foundation

/* Make a funtion that takes in any text and counts how many words there are in total
AND list the words from most used to least. Be sure to lowercase everything in
the string.

EXAMPLE

241 words
1. a - 34
2. the - 27
3. apple - 15
*/

func wordCount(text: String) -> Int {
		let words = text.lowercased().components(separatedBy: " ")
		var wordCounts: [String: Int] = [:]
		for word in words {
				if let count = wordCounts[word] {
						wordCounts[word] = count + 1
				} else {
						wordCounts[word] = 1
				}
		}
		let sortedWordCounts = wordCounts.sorted { $0.value > $1.value }
		for (index, wordCount) in sortedWordCounts.enumerated() {
				print("\(index + 1). \(wordCount.key) - \(wordCount.value)")
		}
		return words.count
}

let text = "This is a test. This is only a test. This is a test of the emergency broadcast system. If this had been an actual emergency, you would have been instructed where to tune in your area for news and official information."

let count = wordCount(text: text)
print("\(count) words")