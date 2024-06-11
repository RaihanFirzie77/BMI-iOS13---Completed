//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Raihan on 6/2/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    var bmiValue: String?
    var advise: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviseLabel.text = advise
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
