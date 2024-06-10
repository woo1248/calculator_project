
class AddOperation {
    func add(_ num1:Int, _ num2: Int)-> Double{
        Double(num1 + num2)
    }
}

class SubtractOperation {
    func subtract(_ num1:Int, _ num2: Int)-> Double{
        Double(num1 - num2)
    }
}

class MultiplyOperation {
    func multiply(_ num1:Int, _ num2: Int)-> Double{
        Double(num1 * num2)
    }
}

class DivideOperation {
    func divide(_ num1:Int, _ num2: Int)-> Double{
        guard num2 != 0 else { return 0}
        return Double(num1) / Double(num2)
    }
}

class ModOperation {
    func mod(_ num1:Int, _ num2: Int)-> Int{
        num1 % num2
    }
}

class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    func operate(_ operatorz: OperatorType, _ num1: Int, _ num2: Int) -> Double{
        
        switch operatorz {
        case .add:
            return addOperation.add(num1, num2)
        case .subtract:
            return subtractOperation.subtract(num1, num2)
        case .multiply:
            return multiplyOperation.multiply(num1, num2)
        case .divide:
            return divideOperation.divide(num1, num2)
            
        }
    }
}

enum OperatorType {
    case add
    case subtract
    case multiply
    case divide
}

let calculator = Calculator()

    
calculator.operate(.add, 1, 2)
calculator.operate(.subtract, 1, 2)
calculator.operate(.multiply, 1, 2)
calculator.operate(.divide, 1, 2)
