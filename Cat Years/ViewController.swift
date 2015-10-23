//
//  ViewController.swift
//  Cat Years
//
//  Created by Jesus Lopez de Nava on 6/23/15.
//  Copyright (c) 2015 LodenaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var age: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
    
        let enteredAge = Int(age.text!)
        
        if enteredAge != nil {
        
            let catYears = enteredAge! * 7
        
            resultLabel.text = "Your cat is \(catYears) in cat years"
            
            self.view.endEditing(true)

        } else {
            
            resultLabel.text = "Please enter a number in the box"
        
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    
    }

}
