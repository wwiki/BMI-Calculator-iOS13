//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shawna on 10/8/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?;
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height);
        // bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1));
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1));
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1));
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0); //!
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice -- Something wrong";
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.8837196827, green: 0.5566366315, blue: 0.4645598531, alpha: 1);
    }
}
