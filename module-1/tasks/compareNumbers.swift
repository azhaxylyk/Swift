import Foundation

if let input = readLine() {
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    
    if numbers.count == 2 {
        print(max(numbers[0], numbers[1]))
    } else {
        print("Пожалуйста, введите два числа.")
    }
} else {
    print("Ошибка ввода.")
}
