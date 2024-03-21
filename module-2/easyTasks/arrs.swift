func minInArray(_ array: [Int]) -> Int {
    guard !array.isEmpty else {
        return 0
    }

    var minValue = array[0]
    for value in array.dropFirst() {
        minValue = min(minValue, value)
    }

    return minValue
}

func range(n: Int) -> [Int] {
    return Array(1...n)
}

func sum(_ array: [Int]) -> Int {
    return array.reduce(0, +)
}

func sort(_ array: inout [Int]) {
    for x in 1..<array.count {
        var y = x
        while y > 0 && array[y] < array[y - 1] {
            array.swapAt(y, y - 1)
            y -= 1
        }
    }
}
