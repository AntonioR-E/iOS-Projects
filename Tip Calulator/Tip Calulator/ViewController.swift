//
//  ViewController.swift
//  Tip Calulator
//
//  Created by Steve Jobs on 11/16/17.
//  Copyright © 2017 antonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var calcButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcButton.layer.cornerRadius = 8
       
    }
    
    @IBAction func silderChanged(_ sender: Any) {
        let tipPercent =  Int(tipSlider.value)
        tipLabel.text = "Tip: \(tipPercent)%"
    }
    @IBAction func calcButtonPressed(_ sender: Any) {
        let amount = (amountTextField.text! as NSString).doubleValue
        let tipPer = Int(tipSlider.value)
        let tipAmount = amount * Double(tipPer)/100
        let tipAmountString = String(format: "$%.02f",tipAmount)
        tipAmountLabel.text = "Tip Amount:\t \(tipAmountString)"
        
        let total = amount + tipAmount
        let totalString = String(format: "$%.02f", total)
        totalAmountLabel.text = "Total Amount:\t \(totalString)"
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
 
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

