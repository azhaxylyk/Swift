func compareIntegers(a: Int, b: Int) -> Int {
    if a > b {
        return 1
    } else if a == b {
        return 0
    } else {
        return -1
    }
}

func maxOfThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a >= b && a >= c {
        return a
    } else if b >= a && b >= c {
        return b
    } else {
        return c
    }
}