func sumFrom1ToN(_ n: Int) -> Int {
    return n * (n + 1) / 2
}

func countLeapYears(upTo year: Int) -> Int {
    let leapYearsDiv400 = year / 400
    let leapYearsDiv4 = year / 4
    let leapYearsDiv100 = year / 100
    
    return leapYearsDiv400 + (leapYearsDiv4 - leapYearsDiv100)
}

func swapBits(_ a: UInt8) -> UInt8 {
    return ((a & 0x0F) << 4) | ((a & 0xF0) >> 4)
}

func sortThreeNumbers(_ a: Int, _ b: Int, _ c: Int) {
    let minNumber = min(a, b, c)
    let maxNumber = max(a, b, c)
    let midNumber = a + b + c - minNumber - maxNumber
    
    print("\(minNumber) \(midNumber) \(maxNumber)")
}

func median(_ array: [Int]) -> Int? {
    let sortedArray = array.sorted()
    guard !sortedArray.isEmpty else { return nil }
    
    let middleIndex = sortedArray.count / 2
    
    if sortedArray.count % 2 == 0 {
        return sortedArray[middleIndex - 1]
    } else {
        return sortedArray[middleIndex]
    }
}

func missingNumbers(from array1: [Int], in array2: [Int]) -> [Int] {
    let set1 = Set(array1)
    let set2 = Set(array2)
    
    let missing = set2.subtracting(set1)
    
    return missing.sorted()
}

func isPerfectlyBalanced(_ numbers: [Int]) -> Bool {
    for index in numbers.indices {
        let leftSum = numbers[..<index].reduce(0, +)
        let rightSum = numbers[(index+1)...].reduce(0, +)
        
        if leftSum == rightSum {
            return true
        }
    }
    return false
}

func findStockIndices(m: Int, s: [Int]) -> (Int, Int)? {
    var dict = [Int: Int]() 
    
    for (i, price) in s.enumerated() {
        if let foundIndex = dict[m - price] {
            return (foundIndex, i)
        }
        dict[price] = i
    }
    
    return nil
}

func hanoiTower(n: Int, source: Int = 1, target: Int = 3, auxiliary: Int = 2) {
    if n == 1 {
        print("Диск 1 с башни \(source) переложить в башню \(target)")
    } else {
        hanoiTower(n: n-1, source: source, target: auxiliary, auxiliary: target)
        print("Диск \(n) с башни \(source) переложить в башню \(target)")
        hanoiTower(n: n-1, source: auxiliary, target: target, auxiliary: source)
    }
}