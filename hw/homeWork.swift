// camelCase -> snake_case
func toSnakeCase(_ str: String) -> String {
    var newStr = ""
    for character in str {
        if character.isUppercase {
            newStr += "_" + character.lowercased()
        } else {
            newStr += String(character)
        }
    }
    if newStr.hasPrefix("_") {
        newStr.removeFirst()
    }
    return newStr
}

// Return the Index of the First Vowel
func firstVowel(_ str: String) -> Int? {
    let vowels = "aeiouAEIOU"
    for (index, char) in str.enumerated() {
        if vowels.contains(char) {
            return index
        }
    }
    return nil
}

// Numbers in Strings
func numInStr(_ arr: [String]) -> [String] {
    let digits = "0123456789" 
    var result: [String] = [] 
    
    for str in arr { 
        for char in str { 
            if digits.contains(char) { 
                result.append(str) 
                break 
            }
        }
    }
    
    return result
}

// Roman Numerals
func RomanNumeral(_ roman: String) -> Int {
    let romanValues: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    let chars = Array(roman)
    var total = 0
    
    for i in 0..<chars.count {
        let currentVal = romanValues[chars[i]]!
        let nextVal = i + 1 < chars.count ? romanValues[chars[i + 1]]! : 0
        
        if currentVal < nextVal {
            total -= currentVal
        } else {
            total += currentVal
        }
    }
    
    return total
}

