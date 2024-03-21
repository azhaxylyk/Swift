if let input = readLine(), let a = Int(input), a > 0 {
    let lastDigit = a % 10

    print(lastDigit)
} else {
    print("Пожалуйста, введите корректное положительное число.")
}
