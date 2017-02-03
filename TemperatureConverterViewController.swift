//
//  TemperatureConverterViewController.swift
//  Wcmgg3TemperatureConverter
//
//  Created by Will Mock on 2/2/17.
//  Copyright © 2017 Will Mock. All rights reserved.
//

import UIKit

class TemperatureConverterViewController: UIViewController {

    @IBOutlet weak var convertedValueLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        convertedValueLabel.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertValue(_ sender: Any) {
        
        if let fNum = Double(inputTextField.text!){
            
            let cNum = (fNum - 32)/1.8
            
            convertedValueLabel.text = String(format: "%.2f", cNum)
            
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
