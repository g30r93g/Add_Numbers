//
//  RoundedButton.swift
//  Add Numbers
//
//  Created by George Nick Gorzynski on 05/09/2017.
//  Copyright © 2017 g30r93g. All rights reserved.
//

import UIKit

// Creates a class called RoundedButton which is a subclass of UIButton <- Basically RoundedButton is inheriting all of UIButton's functions to create a variation of UIButton
class RoundedButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        
        contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.height/2
        layer.borderColor = isEnabled ? tintColor.cgColor: UIColor.lightGray.cgColor
    }
    
}

// Creates a class called RoundedSquareButton which is a subclass of UIButton
class RoundedSquareButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        
        contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 5
        layer.borderColor = tintColor.cgColor
    }
}

