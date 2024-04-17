print("Введите строку: ", terminator: "")
if let input = readLine() {
    let cleanedInput = input.lowercased().filter { $0.isLetter }  
    let reversedInput = String(cleanedInput.reversed()) 
    
    if cleanedInput == reversedInput {
        print("Строка '\(input)' является палиндромом.")
    } else {
        print("Строка '\(input)' не является палиндромом.")
    }
} else {
    print("Ошибка ввода.")
}
