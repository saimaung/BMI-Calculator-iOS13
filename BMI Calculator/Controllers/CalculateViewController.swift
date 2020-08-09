//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculatorBrain: CalculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = sender.value
        heightValueLabel.text = String(format: "%.2fm", value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let value = sender.value
        weightValueLabel.text = String(format: "%.0fKg", value)
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(for: height, for: weight)
        // performSegue triggers prepare func and initializes ResultViewController
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // one ViewController could has multiple segue
        if (segue.identifier == "goToResult") {
            // as!  force down cast (downcasting) to ResultViewController from parent UIViewController from segue.destination
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = String(format: "%.1f", calculatorBrain.getBMIValue())
            resultVC.advice = calculatorBrain.getAdvice()
            resultVC.color = calculatorBrain.getColor()
        }
    }
    
}

