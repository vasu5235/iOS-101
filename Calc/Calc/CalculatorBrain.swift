//
//  CalculatorBrain.swift
//  Calc
//
//  Created by Vasu Mistry on 12/12/17.
//  Copyright © 2017 Vasu Mistry. All rights reserved.
//

import Foundation

class CalculatorBrain{
    var op0 = 0
    var operand = "f"
    var op1 = 0

    func unaryOperation(val:Double,symbol:String )-> Double{
        switch symbol {
        case "√":
            return sqrt(val).rounded()
        case "C":
            
            return 0.0
        default:
            return val - 1.0
        }
    }
    
    func binaryOperation(exprString:String)->Double{
        return 0.0
    }
}
