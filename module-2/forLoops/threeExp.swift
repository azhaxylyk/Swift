let base = 3
let exponent = 10
var result = 1

for _ in 1..<exponent {
    result *= base
}

print("\(base) to the power of \(exponent) is \(result)")
