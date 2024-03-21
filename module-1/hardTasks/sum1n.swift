if let input = readLine(), let n = Int(input), n >= 1 && n <= 65535 {
    let sum = n * (n + 1) / 2
    print(sum)
} else {
    print("Пожалуйста, введите число в диапазоне от 1 до 65535.")
}
