//
//  Model.swift
//  CountOnMe
//
//  Created by Nassir Bouredenna on 13/12/2021.
//  Copyright © 2021 Vincent Saluzzo. All rights reserved.
//

import Foundation

class Model {
    func expressionHaveResult(text: String) -> Bool{
        return text.firstIndex(of: "=") != nil
    }
}
