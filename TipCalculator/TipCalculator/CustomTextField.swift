//
//  CustomTextField.swift
//  TipCalculator
//
//  Created by Teran on 8/4/18.
//  Copyright © 2018 Brandon Teran. All rights reserved.
//

import UIKit

@IBDesignable class CustomTextField: UITextField {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: CGColor = UIColor.white.cgColor {
        didSet {
            self.layer.borderColor = borderColor
        }
    }
}
