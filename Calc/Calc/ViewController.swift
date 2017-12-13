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
    var exprString = ""
    private var userInMiddleOfTyping = false
    
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
        let result = brain.unaryOperation(val: doubleValue,symbol: sender.currentTitle!)
        displayOutput.text = String(format: "%.3f",result)
    }
    
    //touchBinary - +, xor, -, mult, div
    @IBAction func touchBinary(_ sender: UIButton) {
        //ADD HERE: Append the symbol to the exprString variable
    }
    
    //touchNum - you know what.
    @IBAction func touchNum(_ sender: UIButton) {
        displayOutput.text = sender.currentTitle!
        //ADD HERE: Append to the exprString variable.
    }
}
/*
 TASKS:
 1. In touchBinary: Create a global private string variable that will contain the entire expression i.e. op1 operand op2.
 */
