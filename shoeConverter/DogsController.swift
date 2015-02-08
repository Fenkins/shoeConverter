//
//  DogsController.swift
//  shoeConverter
//
//  Created by Fenkins on 08/02/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class DogsController: UIViewController {
    
    @IBOutlet weak var dogYearsTextField: UITextField!

    
    @IBOutlet weak var convertedDogYearsTextField: UILabel!


    @IBAction func convertDogYears(sender: UIButton) {
        let dogYearsNumber = Double((dogYearsTextField.text as NSString).doubleValue)
        convertedDogYearsTextField.hidden = false
        convertedDogYearsTextField.text = "Your dog is "+"\(dogYearsNumber * 7)" + " years old! Wow!"
        dogYearsTextField.resignFirstResponder()
    }
}