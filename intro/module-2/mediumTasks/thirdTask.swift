print("Введите число: ", terminator: "")
if let input = readLine(), let number = Int(input) {
    var isPrime = true
    if number < 2 {
        isPrime = false
    } else {
        for i in 2..<number {
            if number % i == 0 {
                isPrime = false
                break
            }
        }
    }

    if isPrime {
        print("Число \(number) является простым.")
    } else {
        print("Число \(number) не является простым.")
    }
} else {
    print("Пожалуйста, введите корректное целое число.")
}
