func checkAndPrintIfPerfectNumber(_ number: Int) {
    if number > 1 {
        var sum = 0
        for i in 1..<number {
            if number % i == 0 {
                sum += i
            }
        }
        
        if sum == number {
            print("\(number) является совершенным числом.")
        } else {
            print("\(number) не является совершенным числом.")
        }
    } else {
        print("\(number) не является совершенным числом.")
    }
}