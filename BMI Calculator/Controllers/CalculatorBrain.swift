//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by designbyalabi on 26/11/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0
    
    mutating func calculatorBMI(height: Float, weight: Float){
       bmi =  weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
       let bmiTo1Decimal = String(format: "%.1f", bmi)
        return bmiTo1Decimal
    }
}
