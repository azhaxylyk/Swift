// Наследование - 1
class Shape {
    func calculateArea() -> Double {
        fatalError("This method must be overridden by subclasses.")
    }
}

class Square: Shape {
    private var sideLength: Double

    init(sideLength: Double) {
        self.sideLength = sideLength
    }

    override func calculateArea() -> Double {
        return sideLength * sideLength
    }
}

class Rectangle: Shape {
    private var width: Double
    private var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    override func calculateArea() -> Double {
        return width * height
    }
}

class Triangle: Shape {
    private var base: Double
    private var height: Double

    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }

    override func calculateArea() -> Double {
        return 0.5 * base * height
    }
}

let square = Square(sideLength: 5.0)
print(square.calculateArea())

let rectangle = Rectangle(width: 10.0, height: 6.0)
print(rectangle.calculateArea())

let triangle = Triangle(base: 8.0, height: 12.0)
print(triangle.calculateArea())


// Наследование - 2
class Vehicle {
    func move() {
        fatalError("This method must be overridden by subclasses.")
    }
}

class Car: Vehicle {
    override func move() {
        print("The car is driving along the road.")
    }
}

class Bicycle: Vehicle {
    override func move() {
        print("A cyclist pedals and rides along the path.")
    }
}

class Motorcycle: Vehicle {
    override func move() {
        print("A motorcyclist rushes along the highway.")
    }
}

let car = Car()
car.move() 

let bicycle = Bicycle()
bicycle.move() 

let motorcycle = Motorcycle()
motorcycle.move() 



// Наследование - 3
class Animal {
    func makeSound() {
        fatalError("This method must be overridden by subclasses.")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("Meau!")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Gav!")
    }
}

class Lion: Animal {
    override func makeSound() {
        print("Roar!")
    }
}

let cat = Cat()
cat.makeSound() 

let dog = Dog()
dog.makeSound() 

let lion = Lion()
lion.makeSound()


// Наследование - 4
class Fruit {
    func eat() {
        fatalError("This method must be overridden by subclasses.")
    }
}

class Apple: Fruit {
    override func eat() {
        print("I ate apple")
    }
}

class Pear: Fruit {
    override func eat() {
        print("I ate pear")
    }
}

class Orange: Fruit {
    override func eat() {
        print("I ate orange")
    }
}

let apple = Apple()
apple.eat() 

let pear = Pear()
pear.eat()

let orange = Orange()
orange.eat()


// Наследование - 5
//5555