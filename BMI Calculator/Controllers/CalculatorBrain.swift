//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sai Maung on 2020-08-09.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(for height: Float, for weight: Float)  {
        let val = weight / pow(height, 2)
        bmi = BMI(value: val)
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.backgroundColor ?? UIColor.clear
    }
}
