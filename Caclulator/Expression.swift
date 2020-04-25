//
//  Expression.swift
//  Caclulator
//
//  Created by admin on 25.04.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation



struct Expression {
    var firstValue = [Double]()
    var secondValue = [Double]()
    var operationSign: String
    var currentPosition: Bool
    
    var firstValueDoubleType: Double {
        var result: Double = 0
        var index = firstValue.count - 1
        for num in firstValue {
            result += num * pow(10.0, Double(index))
            index -= 1
        }
        return result
    }
    
    var secondValueDoubleType: Double {
        var result: Double = 0
        var index = secondValue.count - 1
        for num in secondValue {
            result += num * pow(10.0, Double(index))
            index -= 1
        }
        return result
    }
    
    var solveExpression: Double {
        switch operationSign {
        case "+":
            return firstValueDoubleType + secondValueDoubleType
        case "-":
            return firstValueDoubleType - secondValueDoubleType
        case "*":
            return firstValueDoubleType * secondValueDoubleType
        case "/":
            return firstValueDoubleType / secondValueDoubleType
        default:
            return 0
        }
        //if operationSign == "+" {
        //    return firstValueDoubleType + secondValueDoubleType
        //} else if operationSign == "*" {
        //    return firstValueDoubleType * secondValueDoubleType
        //} else if operationSign == "/" {
        //    return firstValueDoubleType / secondValueDoubleType
        //} else if operationSign == "-" {
        //    return firstValueDoubleType - secondValueDoubleType
        //} else {
        //    return 0
        //}
    }
    
}
