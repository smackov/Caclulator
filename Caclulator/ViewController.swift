//
//  ViewController.swift
//  Caclulator
//
//  Created by admin on 03.04.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculator = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        labelOfAction.textColor = .black
    }

    func updateLabel() {
        labelOfAction.text = calculator.screanText()
    }
    
    
// DECLARATION LABEL------------------------------------
    @IBOutlet weak var labelOfAction: UILabel!
    
    
// DECLARATION BUTTONS----------------------------------
    @IBAction func buttonNumOne(_ sender: UIButton) {
        calculator.appendNumber("1")
        updateLabel()
    }
    
    @IBAction func buttonNumTwo(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumThree(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumFour(_ sender: UIButton) {
    }
    
    @IBAction func buttonNUmFive(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumSix(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumSeven(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumEight(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumNine(_ sender: UIButton) {
    }
    
    @IBAction func buttonNumZero(_ sender: UIButton) {
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        calculator.calculation()
        updateLabel()
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        calculator.addOperatorSign(.addition)
        updateLabel()
    }
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
    }
    
    @IBAction func buttonSubtraction(_ sender: UIButton) {
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
    }
    
    
    
}

