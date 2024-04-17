print("Введите число: ", terminator: "")
if let input = readLine(), let number = Int(input) {
    if number % 2 == 0 {
        print("Число \(number) четное.")
    } else {
        print("Число \(number) нечетное.")
    }
} else {
    print("Пожалуйста, введите корректное целое число.")
}
