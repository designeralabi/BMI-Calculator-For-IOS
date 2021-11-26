//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

import Foundation

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"

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
        bmiValue = String(format: "%.1f", bmi)
        
        print(bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //using the if to check which Segue identifier should in case of a situation where multiple viewController screem is involved
        if segue.identifier == "goToResult" {
            
            
           let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }		
    }
    
    
}

