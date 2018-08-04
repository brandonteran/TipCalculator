//
//  ViewController.swift
//  TipCalculator
//
//  Created by Teran on 8/4/18.
//  Copyright © 2018 Brandon Teran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel   : UILabel!
    @IBOutlet weak var totalLabel : UILabel!
    @IBOutlet weak var billField  : CustomTextField!
    @IBOutlet weak var tipControl : CustomSegmentedControl!
    
    
    private func setupUIAttributes() {
        billField.attributedPlaceholder = NSAttributedString(string: "0.00", attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)])
    }
    
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: UITextField) {
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill  = Double(billField.text!) ?? 0.0
        let tip   = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text   = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func changeTip(_ sender: UISegmentedControl) {
        calculateTip(billField)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIAttributes()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

