print("Введите дату в формате dd.MM.yyyy: ", terminator: "")
if let input = readLine() {
    let components = input.split(separator: ".")
    if components.count == 3 {
        let day = components[0]
        let month = components[1]
        let year = components[2]
        
        if day.count == 2, month.count == 2, year.count == 4,
           let _ = Int(day), let _ = Int(month), let _ = Int(year) {
            print("Дата '\(input)' соответствует формату.")
        } else {
            print("Дата '\(input)' не соответствует формату.")
        }
    } else {
        print("Дата '\(input)' не соответствует формату.")
    }
} else {
    print("Ошибка ввода.")
}
