//
//  CustomSegmentedControl.swift
//  TipCalculator
//
//  Created by Teran on 8/4/18.
//  Copyright © 2018 Brandon Teran. All rights reserved.
//

import UIKit


@IBDesignable class CustomSegmentedControl: UISegmentedControl {
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
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = layer.frame.height / 2
    }
}
