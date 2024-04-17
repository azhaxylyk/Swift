if let input = readLine(), let purchaseAmount = Double(input) {
    let discount: Int
    switch purchaseAmount {
    case 0..<1000:
        discount = 0
    case 1000..<5000:
        discount = 5
    case 5001..<10000:
        discount = 10
    default:
        discount = 15
    }

    print(discount)
} else {
    print("Пожалуйста, введите корректную сумму покупки.")
}
