if let input = readLine(), let number = Int(input) {
    if number % 2 == 0 {
        print("0")
    } else {
        print("1")
    }
} else {
    print("Please enter a valid integer.")
}
