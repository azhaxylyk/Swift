func isPerfectSquare(_ x: Int) -> Bool {
    let s = Int(sqrt(Double(x)))
    return s * s == x
}

func isFibonacciNumber(_ n: Int) -> Bool {
    return isPerfectSquare(5 * n * n + 4) || isPerfectSquare(5 * n * n - 4)
}
