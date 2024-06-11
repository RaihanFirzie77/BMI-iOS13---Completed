//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

@available(iOS 15.0, *)
class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatedBrain = CalculateBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        let roundDecimal = sender.value
//        let doubleStr = String(format: "%.2f", roundDecimal)
//        print(doubleStr)
        // or you use this code
//        heightLabel.text = String(format: "%.2fm", sender.value)
        // in the top of this text, you can use that code, but its not fit or right code, well this was the good one
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = ("\(height)m")
    }
    
    @IBAction func wightSliderChanged(_ sender: UISlider) {
//        weightLabel.text = String(format: "%.0fkg", sender.value)
        // or
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = ("\(weight)kg")
    }
    
    @IBAction func calculatedPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        print(height)
//        print(weight)
        
        calculatedBrain.calculatedBMI(height: height, weight: weight)
//        print(calculatedBrain.calculatedBMI(height: height, weight: weight))
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatedBrain.getBMIValue()
            destinationVC.advise = calculatedBrain.getAdvise()
            destinationVC.color = calculatedBrain.getColor()
        }
    }
}

