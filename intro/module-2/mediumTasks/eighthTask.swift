func seasonFor(month: Int, day: Int) -> String {
    switch month {
    case 3...5:
        return "весна"
    case 6...8:
        return "лето"
    case 9...11:
        return "осень"
    case 12, 1...2:
        if month == 12 && day < 21 {
            return "осень"
        } else if month == 3 && day < 20 {
            return "зима"
        } else {
            return "зима"
        }
    default:
        return "неизвестный сезон"
    }
}
