//
//  ViewController.swift
//  Calc
//
//  Created by Vasu Mistry on 11/12/17.
//  Copyright © 2017 Vasu Mistry. All rights reserved.
//

/*
 Clear button is not considered for now.
*/
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayOutput: UILabel!
    private var brain = CalculatorBrain()
    private var firstNumEntered = false
    var exprString2 = ""
    var exprString = ""
    var operatorSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //display - get and set
    var displayValue: Double {
        get {
            return Double(displayOutput.text!)!
        }
        set {
            displayOutput.text = String(newValue)
        }
    }
 
    //touchUnary - C, sqrt
    @IBAction func touchUnary(_ sender: UIButton){
        let doubleValue = Double(displayOutput.text!)!
        let result = brain.unaryOperation(val: doubleValue,symbol: sender.currentTitle!,currExpr:exprString2)
        displayOutput.text = result.0
        exprString2 = ""
        firstNumEntered = false
    }
    
    //Computation button
    @IBAction func touchEqualsTo(_ sender: UIButton) {
        exprString = exprString + displayOutput.text!
        let result = brain.binaryOperation(exprString:exprString,opSelected:operatorSelected)
        displayOutput.text = String(format:"%.0f",result)
        exprString = ""
    }
    //touchBinary - +, xor, -, mult, div
    @IBAction func touchBinary(_ sender: UIButton) {
        //ADD HERE: Append the symbol to the exprString variable
        exprString = displayOutput.text!
        firstNumEntered = false
        exprString = exprString + sender.currentTitle!
        print("op ",exprString)
        operatorSelected = sender.currentTitle!
    }
    
    //touchNum - you know what.
    @IBAction func touchNum(_ sender: UIButton) {
        if !firstNumEntered{
            displayOutput.text = sender.currentTitle!
            firstNumEntered = true
        }
        else{
            let currentText = displayOutput.text!
            displayOutput.text = currentText + sender.currentTitle!
        }
        exprString2 = displayOutput.text!
        //ADD HERE: Append to the exprString variable.
    }
}
/*
 TASKS:
 1. In touchBinary: Create a global private string variable that will contain the entire expression i.e. op1 operand op2.
 */
