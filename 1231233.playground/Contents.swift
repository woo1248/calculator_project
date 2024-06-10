

class Calculator {
    var num1: Double
    var num2: Double
    
    init (num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func add() -> Double {
        return num1 + num2
    }
    
    func subtract() -> Double {
        return num1 - num2
    }
    
    func multiply() -> Double {
        return num1 * num2
    }
    
    func divide() -> Double {
        return num1 / num2
    }
    
    func remainder() -> Double {
        return num1.truncatingRemainder(dividingBy: num2)
    }
}
    
let calculator = Calculator (num1: 4, num2: 5)

calculator.add()
calculator.subtract()
calculator.multiply()
calculator.divide()
calculator.remainder()

print(calculator.add())
print(calculator.subtract())
print(calculator.multiply())
print(calculator.divide())
print(calculator.remainder())
