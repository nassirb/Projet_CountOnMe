//
//  Model.swift
//  CountOnMe
//
//  Created by Nassir Bouredenna on 13/12/2021.
//  Copyright © 2021 Vincent Saluzzo. All rights reserved.
//

import Foundation

class Model {
//    func elements(text: [String]) -> [String]{
//        return text.split(separator: " ").map { "\($0)" }
//    }
    
    func expressionIsCorrect(elements: [String]) -> Bool{
        return elements.last != "+" && elements.last != "-"
    }
    
    func expressionHaveEnoughElement(elements: [String]) -> Bool{
        return elements.count >= 3
    }
    
    func canAddOperator(elements: [String]) -> Bool{
        return elements.last != "+" && elements.last != "-"
    }
    
    func expressionHaveResult(text: String) -> Bool{
        return text.firstIndex(of: "=") != nil
    }
    
    func calculate(elements: [String]) -> String{
        var operationsToReduce = elements
        print(elements)
        // Iterate over operations while an operand still here
        while operationsToReduce.count > 1 {
            let left = Int(operationsToReduce[0])!
            let operand = operationsToReduce[1]
            let right = Int(operationsToReduce[2])!
            
            let result: Int
            switch operand {
                case "+": result = left + right
                case "-": result = left - right
                case "x": result = left * right
                case "÷": result = left / right
                default: fatalError("Unknown operator !")
            }
            operationsToReduce = Array(operationsToReduce.dropFirst(3))
            operationsToReduce.insert("\(result)", at: 0)
        }
        return operationsToReduce.first!
    }
}
