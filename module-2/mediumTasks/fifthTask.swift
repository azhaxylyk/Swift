func findPerfectNumbers(upTo limit: Int) -> [Int] {
    var perfectNumbers = [Int]()
    
    for number in 1...limit {
        var sum = 0
        for divisor in 1..<number {
            if number % divisor == 0 {
                sum += divisor
            }
        }
        if sum == number {
            perfectNumbers.append(number)
        }
    }
    
    return perfectNumbers
}

