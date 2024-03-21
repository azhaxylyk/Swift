func sumOfSquaresWithLoop(n: Int) -> Int {
    var sum = 0
    for i in 1...n {
        sum += i * i
    }
    return sum
}

func printEvenNumbers(from a: Int, to b: Int) {
    for number in a...b {
        if number % 2 == 0 {
            print(number, terminator: " ")
        }
    }
    print()
}

func power(_ a: Int, _ b: Int) -> Int {
    var result = 1
    for _ in 1...b {
        result *= a
    }
    return result
}

func calculateDeposit(n: Int, k: Double, b: Double) -> Double {
    var finalAmount = b
    let monthlyInterestRate = k / 100 / 12 
    
    for _ in 1...n {
        finalAmount += finalAmount * monthlyInterestRate
    }

    return finalAmount
}