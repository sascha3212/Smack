//
//  RoundedBtn.swift
//  Smack
//
//  Created by Sascha Landegge on 16/01/2018.
//  Copyright © 2018 Codeunicum. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornderRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornderRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView(){
        self.layer.cornerRadius = cornderRadius
    }
}
