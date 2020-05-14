//
//  CustomButton.swift
//  UnitConvertor
//
//  Created by saibalaji on 13/05/20.
//  Copyright © 2020 saibalaji. All rights reserved.
//

import UIKit
@IBDesignable
class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        getview()
    }
    
    override func prepareForInterfaceBuilder() {
        getview()
    }
    
    
  func getview()
  {    
       backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 0.1439693921)
       layer.cornerRadius = 5.0
       layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       layer.shadowOpacity = 0.75
       layer.borderColor = UIColor.white.cgColor
       layer.borderWidth = 2.0
    
    }

}
