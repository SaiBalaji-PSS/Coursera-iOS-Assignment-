//
//  CustomTextView.swift
//  UnitConvertor
//
//  Created by saibalaji on 12/05/20.
//  Copyright © 2020 saibalaji. All rights reserved.
//

import UIKit
@IBDesignable
class CustomTextView: UITextField {

    override func prepareForInterfaceBuilder() {
        layer.cornerRadius = 5.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2467091182)
        textAlignment = .center
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowRadius = 2.0
        
        layer.shadowOpacity = 0.75
        
        if let p = placeholder
        {
            let atrributedstrings = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            attributedPlaceholder = atrributedstrings
        }
}
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2467091182)
        
        if let p = placeholder
        {
            let atrributedstrings = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            attributedPlaceholder = atrributedstrings
        }
        
    }

}
