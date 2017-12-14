//
//  CalculatorBrain.swift
//  Calc
//
//  Created by Vasu Mistry on 12/12/17.
//  Copyright © 2017 Vasu Mistry. All rights reserved.
//

import Foundation

class CalculatorBrain{
    func unaryOperation(val:Double,symbol:String,currExpr:String)-> (String, String) {
        switch symbol {
        case "√":
            let answer = sqrt(val)
            let toReturn = String(answer)
            let endIndex = toReturn.index(toReturn.endIndex, offsetBy: -2)
            if toReturn[endIndex] == "."{
                return (String(Int(answer)),currExpr)
            }
            else{
                return (String(format:"%0.2f",answer),currExpr)
            }
        case "C":
            return ("0.0",currExpr)
        default:
            return (String(val),currExpr)
        }
    }

    
    func binaryOperation(exprString:String,opSelected:String)->Double{
            let numberArray = exprString.components(separatedBy: opSelected)
        for word in numberArray{
            print("hi ",word)
        }
        switch opSelected {
        case "+":
            return Double(numberArray[0])!+Double(numberArray[1])!
        default:
            return 0.0
        }
    }
}
