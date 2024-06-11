//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Raihan on 6/2/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmi: CalculateAtribut?
    
    func getBMIValue() -> String {
        let bmi1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1DecimalPlace
    }
    
    func getAdvise() -> String {
        return bmi?.advise ?? "No advise"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
        
    mutating func calculatedBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        print(bmiValue)
        
        if bmiValue < 18.5 {
            bmi = CalculateAtribut(value: bmiValue, advise: "Eat more Indomie!", color: UIColor.blue)
//            print(bmiValue)
        } else if bmiValue < 24.9 {
            bmi = CalculateAtribut(value: bmiValue, advise: "Fit as fiddle!", color: UIColor.magenta)
//            print(bmiValue)
        } else {
            bmi = CalculateAtribut(value: bmiValue, advise: "Eat less Indomie!", color: UIColor.green)
//            print(bmiValue)
        }
    }
}
