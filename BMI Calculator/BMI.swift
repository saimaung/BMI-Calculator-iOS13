//
//  BMI.swift
//  BMI Calculator
//
//  Created by Sai Maung on 2020-08-09.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit

struct BMI {
    let value: Float
    let advice: String
    let backgroundColor: UIColor
    
    init(value: Float) {
        self.value = value
        if value < 18.5 {
            self.advice = "Eat More Snacks"
            self.backgroundColor = UIColor.blue
        } else if value < 24.5 {
            self.advice = "Eating the right amount, keep it rolling"
            self.backgroundColor = UIColor.purple
        } else {
            self.advice = "Stop Eating, You are overweight"
            self.backgroundColor = UIColor.red
        }
    }
}
