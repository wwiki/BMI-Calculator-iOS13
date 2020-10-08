//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m";
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value)  + "kg";
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightValue = heightSlider.value;
        let weightValue = weightSlider.value;
        let bmi = weightValue / (heightValue * heightValue);
        print (bmi);
        
        let secondVC = SecondViewController();
        secondVC.bmiValue = String(format: "%.1f", bmi);
        
        self.present(secondVC, animated: true, completion: nil);
    }
}

