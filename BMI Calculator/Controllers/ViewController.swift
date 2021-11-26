//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

import Foundation

class ViewController: UIViewController {

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let heightSliderValue = sender.value
        let heightRounded = round(heightSliderValue * 100) / 100
        
        heightLabel.text = String(heightRounded)
//        print(heightRounded)
        
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text =  String(Int(round(sender.value))) + "kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        
       let height = heightSlider.value
       let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
        
        //import the secondViewController and stores it secondVc variable
        let secondVC = SecondViewController()
        
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        //display the secondViewController to the user
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    
}

