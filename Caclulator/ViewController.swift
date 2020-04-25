//
//  ViewController.swift
//  Caclulator
//
//  Created by admin on 03.04.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        print("hello")
        super.viewDidLoad()
        labelOfAction.textColor = .black
        
        // Do any additional setup after loading the view.
    }
    
    var expression = Expression(firstValue: [], secondValue: [], operationSign: "none", currentPosition: false)
    
 

// FUNCTIONS -----------------------------------------
    func clearValues(_ expressionGet: Expression) -> Expression {
        var expression = expressionGet
        expression.firstValue.removeAll()
        expression.secondValue.removeAll()
        expression.currentPosition = false
        expression.operationSign = ""
        return expression
    }

    func changeValue(of expressionGet: Expression, to newNum: Double) -> Expression {
        var expression = expressionGet
        if expression.currentPosition == false {
            expression.firstValue.append(newNum)
        } else {
            expression.secondValue.append(newNum)
        }
        return expression
    }

    func changeOperationSign(of expressionGet: Expression, to operationSign: String) -> Expression {
        var expression = expressionGet
        expression.operationSign = operationSign
        expression.currentPosition = true
        labelOfAction.text = operationSign
        return expression
    }
    
    func changeTextOfLabel() {
        var textOfLabel = ""
        if expression.currentPosition == false {
            for num in expression.firstValue {
                textOfLabel.append(String(Int(num)))
            }
        } else {
            for num in expression.secondValue {
                textOfLabel.append(String(Int(num)))
            }
        }
        labelOfAction.text = textOfLabel
    }
    
    
// DECLARATION LABEL------------------------------------
    @IBOutlet weak var labelOfAction: UILabel!
    
    
// DECLARATION BUTTONS----------------------------------
    @IBAction func buttonNumOne(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 1)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumTwo(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 2)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumThree(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 3)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumFour(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 4)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNUmFive(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 5)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumSix(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 6)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumSeven(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 7)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumEight(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 8)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumNine(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 9)
        changeTextOfLabel()
    }
    
    @IBAction func buttonNumZero(_ sender: UIButton) {
        expression = changeValue(of: expression, to: 0)
        changeTextOfLabel()
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        labelOfAction.text = String(expression.solveExpression)
        expression = clearValues(expression)
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        expression = changeOperationSign(of: expression, to: "+")
    }
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        expression = changeOperationSign(of: expression, to: "*")
    }
    
    @IBAction func buttonSubtraction(_ sender: UIButton) {
        expression = changeOperationSign(of: expression, to: "-")
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        expression = changeOperationSign(of: expression, to: "/")
    }
    
    
    
}

