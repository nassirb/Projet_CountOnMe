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
}
