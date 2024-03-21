func findMiddleDigit(a: Int) -> Int {
    var digits = [Int]()
    var number = a

    while number > 0 {
        digits.insert(number % 10, at: 0) 
        number /= 10
    }

    let middleIndex = (digits.count - 1) / 2

    return digits[middleIndex]
}