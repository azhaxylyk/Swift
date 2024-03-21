func canComplete(initialLetters: String, word: String) -> Bool {
    var lettersCount = [Character: Int]()

    for letter in initialLetters {
        lettersCount[letter, default: 0] += 1
    }

    for letter in word {
        if let count = lettersCount[letter], count > 0 {
            lettersCount[letter]! -= 1
        } else {
            return false
        }
    }

    return true
}