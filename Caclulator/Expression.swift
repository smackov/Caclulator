//
//  Expression.swift
//  Caclulator
//
//  Created by admin on 25.04.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

enum Position {
    case firstNumber, signOperator, secondNumber
}

enum OperatorSign {
    case division, subtraction, multiplication, addition, none
    
    var text: String {
        switch self {
        case .division:
            return "/"
        case .subtraction:
            return "-"
        case .addition:
            return "+"
        case .multiplication:
            return "*"
        case .none:
            return ""
        }
    }
}

//struct Numbers {
//    var number: String = ""
//
//    func append(_ character: String) {
//        number.append(character)
//    }
//}

struct Calculator {
    var firstNumber: String = ""
    var secondNumber: String = ""
    var operatorSign = OperatorSign.none
    var currentPosition = Position.firstNumber
    
    mutating func appendNumber(_ character: String) {
        if currentPosition == .firstNumber {
            firstNumber += character
        } else if currentPosition == .signOperator {
            secondNumber += character
            currentPosition = .secondNumber
        } else if currentPosition == .secondNumber {
            secondNumber += character
        }
    }
    
    func screanText() -> String {
        switch currentPosition {
        case .firstNumber:
            return firstNumber
        case .secondNumber:
            return secondNumber
        case .signOperator:
            return operatorSign.text
        }
    }
    
    mutating func addOperatorSign(_ newOperatorSign: OperatorSign) {
        operatorSign = newOperatorSign
        currentPosition = .signOperator
    }
    
    mutating func calculation() {
        var resultOfCalculation: Double
        
        switch operatorSign {
        case .multiplication:
            resultOfCalculation = Double(firstNumber)! * Double(secondNumber)!
        case .subtraction:
            resultOfCalculation = Double(firstNumber)! - Double(secondNumber)!
        case .division:
            resultOfCalculation = Double(firstNumber)! / Double(secondNumber)!
        case .addition:
            resultOfCalculation = Double(firstNumber)! + Double(secondNumber)!
        case .none:
            resultOfCalculation = 0
        }

        firstNumber = "\(resultOfCalculation)"
        secondNumber = ""
        operatorSign = .none
        currentPosition = .firstNumber
    }
    
    
//    var firstValueDoubleType: Double {
//        var result: Double = 0
//        var index = firstValue.count - 1
//        for num in firstValue {
//            result += num * pow(10.0, Double(index))
//            index -= 1
//        }
//        return result
//    }
    
//    var secondValueDoubleType: Double {
//        var result: Double = 0
//        var index = secondValue.count - 1
//        for num in secondValue {
//            result += num * pow(10.0, Double(index))
//            index -= 1
//        }
//        return result
//    }
    
//    var solveExpression: Double {
//        switch operationSign {
//        case "+":
//            return firstValueDoubleType + secondValueDoubleType
//        case "-":
//            return firstValueDoubleType - secondValueDoubleType
//        case "*":
//            return firstValueDoubleType * secondValueDoubleType
//        case "/":
//            return firstValueDoubleType / secondValueDoubleType
//        default:
//            return 0
//        }
//    }
}
