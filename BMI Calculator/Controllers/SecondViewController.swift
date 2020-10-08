//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Shawna on 10/8/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0";
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        view.backgroundColor = .yellow;
        
        let label = UILabel();
        label.text = bmiValue;
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50);
        view.addSubview(label);
    }
}
