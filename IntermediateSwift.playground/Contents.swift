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

func cleanString(text: String) -> String {
    var cleanedText = text.lowercased()
    
    let charactersToReplace = "[\n\t,\\.\\!\\?\\:\\;\"'\\(\\)\\[\\]\\{\\}\\-_\\/\\\\\\|<>`~@#\\$%\\^&]"
    let regex = try! NSRegularExpression(pattern: charactersToReplace)
    
    let range = NSRange(location: 0, length: cleanedText.utf16.count)
    cleanedText = regex.stringByReplacingMatches(in: cleanedText, range: range, withTemplate: " ")
    
    return cleanedText.count > 0 ? cleanedText : ""
}

func wordCount(text: String) -> Int {
    var str = cleanString(text: text)
    let words = str.components(separatedBy: " ")
    var wordCounts: [String: Int] = [:]
    for word in words {
        if let count = wordCounts[word] {
            wordCounts[word] = count + 1
        } else {
            wordCounts[word] = 1
        }
    }
    let sortedWordCounts = wordCounts.filter({ $0.key != "" }).sorted(by: { $0.value > $1.value })
    for (index, wordCount) in sortedWordCounts.enumerated() {
        print("\(index + 1). \(wordCount.key) - \(wordCount.value)")
    }
    return words.count
}

let text = "This is a test. This is only a test. This is a test of the emergency broadcast system. If this had been an actual emergency, you would have been instructed where to tune in your area for news and official information. last time i am using only apple products. apple a day keeps the doctorors away. apple apple apple a day keeps the doctors away. apple apple apple apple."

let count = wordCount(text: text)
print("\(count) words")
