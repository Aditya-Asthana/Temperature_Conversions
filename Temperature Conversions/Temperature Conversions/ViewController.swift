//
//  ViewController.swift
//  Temperature Conversions
//
//  Created by Aditya Asthana on 10/7/19.
//  Copyright © 2019 Aditya Asthana & Siddharth Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FarenheightTextField: UITextField!
    
    @IBOutlet weak var FtoCLabel: UILabel!
    
    @IBAction func getCfromF(_ sender: Any) {
        if let celsius = FarenheightTextField.text {
            if let celsiusInt = Double (celsius){
                let degreesCelsius = (5.0/9.0)*(celsiusInt - 32.0)
                let finalValueC = Int (degreesCelsius)
                FtoCLabel.text = "Approximately " + String (finalValueC) + " ºC"
            }
        }
    }
    
    @IBOutlet weak var CelsiusTextField: UITextField!
    
    @IBOutlet weak var CtoFLabel: UILabel!
    
    @IBAction func getFfromC(_ sender: Any) {
        if let farenheight = CelsiusTextField.text {
            if let farenheightInt = Double (farenheight){
                let degreesFarenheight = (9.0/5.0)*(farenheightInt) + 32.0
                let finalValueF = Int (degreesFarenheight)
                CtoFLabel.text = "Approximately " + String (finalValueF) + " ºF"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

