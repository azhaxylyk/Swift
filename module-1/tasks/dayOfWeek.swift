import Foundation

if let dayOfWeek = readLine()?.lowercased() {
    let days = [
        "понедельник": 1,
        "вторник": 2,
        "среда": 3,
        "четверг": 4,
        "пятница": 5,
        "суббота": 6,
        "воскресенье": 7
    ]

    if let dayNumber = days[dayOfWeek] {
        print(dayNumber)
    } else {
        print("Пожалуйста, введите корректное название дня недели.")
    }
} else {
    print("Ошибка ввода.")
}
