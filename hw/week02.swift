// Классы - 1
class Rectangle {
    var width: Int 
    var height: Int

    init(width: Int, height: Int){
        self.width = width
        self.height = height
    }

    func calculateArea() -> Int{
        self.width * self.height
    }
}

let rectangle = Rectangle(width: 12, height: 7)
print(rectangle.calculateArea())


// Классы - 2
class Book {
    let name: String
    let author: String
    let publishYear: Int

    init(name: String, author: String, publishYear: Int){
        self.name = name
        self.author = author
        self.publishYear = publishYear
    }

    func Inform(){
        print("Book name: \(self.name)\nAuthor: \(self.author)\nThe year of publishing: \(self.publishYear)")
    }
}

let book01 = Book(name: "Book 1", author: "Aknur", publishYear: 1234)
let book02 = Book(name: "Icha Icha", author: "Jiraya", publishYear: 105)
let book03 = Book(name: "1000 - 7", author: "Kaneki ken", publishYear: 993)
let book04 = Book(name: "I'm a genius", author: "Sakuragi Hanamichi", publishYear: 1010)
let book05 = Book(name: "I'm alive", author: "Kim Dokja", publishYear: 1234)

book01.Inform()
book02.Inform()
book03.Inform()
book04.Inform()
book05.Inform()


// Классы - 3
class Car {
    let brand: String
    let model: String
    let year: Int

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    func printInfo() {
        print("Brand: \(brand)")
        print("Model: \(model)")
        print("Year: \(year)/n")
    }
}

let car1 = Car(brand: "Toyota", model: "Camry", year: 2022)
let car2 = Car(brand: "Honda", model: "Civic", year: 2021)
let car3 = Car(brand: "Ford", model: "Mustang", year: 2020)

car1.printInfo()
car2.printInfo()
car3.printInfo()


// Классы - 4
class Student01 {
    let name: String
    var age: Int
    var averageScore: Double

    init(name: String, age: Int, averageScore: Double) {
        self.name = name
        self.age = age
        self.averageScore = averageScore
    }

    func isStraightA() {
        if self.averageScore >= 4.5{
            print("\(name) is a straight-A student.")
        }else {
            print("\(name) should study better.")
        }
    }
}

let student1 = Student01(name: "Aknur", age: 18, averageScore: 4.8)
let student2 = Student01(name: "Aknur02", age: 19, averageScore: 3.2)

student1.isStraightA()
student2.isStraightA()


// Классы - 5
class BankAccount01 {
    let accountNumber: String
    var balance: Double

    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }

    func refill01(amount: Double){
        if amount > 0 {
            balance += amount
        } else {
            print("Wrong amount!")
        }
    }

    func withdraw01(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
        } else {
            print("Insufficient funds or wrong amount!")
        }
    }
}

let account01 = BankAccount01(accountNumber: "1234567890", balance: 1000.00)
account01.refill01(amount: 500.22)
account01.withdraw01(amount: 1000.22)
print(account01.balance)


// Инкапсуляция - 1
class BankAccount {
    let accountNumber: String
    private var balance: Double

    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }

    func refill(amount: Double){
        if amount > 0 {
            balance += amount
        } else {
            print("Wrong amount!")
        }
    }

    func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
        } else {
            print("Insufficient funds or wrong amount!")
        }
    }

    func checkBalance() -> Double{
        balance
    }
}

let account = BankAccount(accountNumber: "1234567890", balance: 1000.00)
account.refill(amount: 500.22)
account.withdraw(amount: 1000.22)
print(account.checkBalance())


// Инкапсуляция - 2
class Student {
    private var name: String
    private var age: Int
    private var averageScore: Double

    init(name: String, age: Int, averageScore: Double) {
        self.name = name
        self.age = age
        self.averageScore = averageScore
    }

    func setName(newName: String) {
        name = newName
    }

    func getName() -> String {
        return name
    }

    func setAge(newAge: Int) {
        age = newAge
    }

    func getAge() -> Int {
        return age
    }

    func setAverageScore(newAverageScore: Double) {
        if newAverageScore >= 0 && newAverageScore <= 5 {
            averageScore = newAverageScore
        } else {
            print("Average score should be in range 0-5.")
            averageScore = 0
        }
    }

    func getAverageScore() -> Double {
        return averageScore
    }
}

let student = Student(name: "Aknur", age: 18, averageScore: 4.2)

student.setName(newName: "Sasuke")
student.setAge(newAge: 19)
student.setAverageScore(newAverageScore: 4.8)

print("Name: \(student.getName())")
print("Age: \(student.getAge())")
print("Average score: \(student.getAverageScore())")

student.setAverageScore(newAverageScore: -2.5)
print("Average score: \(student.getAverageScore())")


// Инкапсуляция - 3
class Phone {
