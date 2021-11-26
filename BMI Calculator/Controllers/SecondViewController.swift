//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by designbyalabi on 25/11/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //view by default are always transparent so this changes the background to assign color = red
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.text = bmiValue
        
      //set the label frame view size
        label.frame = CGRect(x: 0, y: 0, width: 150, height: 30)
        
        //display the label to the user
        view.addSubview(label)
    }
}
