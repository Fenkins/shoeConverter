//
//  ViewController.swift
//  shoeConverter
//
//  Created by Fenkins on 08/02/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    @IBAction func womConvertButtonPressed(sender: UIButton) {
        let numberFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(numberFromTextField + conversionConstant)" + " is a European size shoe"
        womensShoeSizeTextField.resignFirstResponder()
        
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
//        let stringFromTextField = mensShoeSizeTextField.text
//        let numberFromString = stringFromTextField.toInt()
//        var integerFromNumber = numberFromString!
//        let conversionConstant = 30
//        integerFromNumber += conversionConstant
//        mensConvertedShoeSizeLabel.hidden = false
//        let showConvertingResult = "\(integerFromNumber)"
//        mensConvertedShoeSizeLabel.text = showConvertingResult

        //        or better say:

        let numberFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(numberFromTextField + conversionConstant)" + " is a European size shoe"
        
        mensShoeSizeTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

