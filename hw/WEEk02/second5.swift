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
    private var number: String

    init(number: String){
        self.number = number
        if isValidName(number: self.number) == false{
            print("Error: Invalid phone number format. Must contain only 11 digits.")
        }
        
    }

    func isValidName(number: String) -> Bool{
        if number.count == 11{
            for char in number {
                if char >= "0" && char <= "9" {
                    continue 
                } else {
                    return false
                }
            }
            return true
        }else{
            return false
        }
    }

    func updateNumber(newNumber: String){
        if isValidName(number: newNumber){
            self.number = newNumber
        }else{
            print("Error: Invalid phone number format. Must contain only 11 digits.")
        }
    }

    func printNumber(){
        print(self.number)
    }
}

let number = Phone(number: "qqqqqqqqqqq")
number.updateNumber(newNumber: "87057410110")
number.printNumber()


// Инкапсуляция - 4
class Book {
    private var name: String

    init(name: String){
        self.name = name
        if isValidName(name: self.name) == false{
            print("Error, upfate the name!!")
        }
        
    }

    func isValidName(name: String) -> Bool{
        if name.count > 0 {
            return true
        }else{
            return false
        }
    }

    func updateName(newName: String){
        if isValidName(name: newName){
            self.name = newName
        }else{
            print("Error!!")
        }
    }

    func printName(){
        print(self.name)
    }
}

let book = Book(name: "")
book.updateName(newName: "aknur")
book.printName()


// Инкапсуляция - 5
// class Car {
//     private var make: String
//     private var model: String? // Model can be nil

//     init(make: String) {
//         self.make = make
//     }

//     func setModel(model: String) {
//         switch make {
//         case "Toyota":
//             if ["Camry", "Corolla", "RAV4"].contains(model) {
//                 self.model = model
//             } else {
//                 print("Error")
//             }
//         case "BMW":
//             if ["3 Series", "5 Series", "X5"].contains(model) {
//                 self.model = model
//             } else {
//                 print("Error")
//             }
//         case "Mercedes-Benz":
//             if ["C-Class", "E-Class", "GLE"].contains(model) {
//                 self.model = model
//             } else {
//                 print("Error")
//             }
//         default:
//             print("Error")
//         }
//     }

//     func getMake() -> String {
//         return make
//     }

//     func getModel() -> String? {
//         return model
//     }
// }
