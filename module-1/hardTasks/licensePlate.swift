func formatLicensePlate(_ s: String, groupLength n: Int) -> String {
    let alphanumeric = s.filter { $0.isLetter || $0.isNumber }.uppercased()
    var result = ""
    var count = 0

    for character in alphanumeric.reversed() {
        if count == n {
            result.append("-")
            count = 0
        }
        result.append(character)
        count += 1
    }

    return String(result.reversed())
}