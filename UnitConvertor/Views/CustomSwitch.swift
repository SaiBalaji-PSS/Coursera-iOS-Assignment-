//
//  CustomSwitch.swift
//  UnitConvertor
//
//  Created by saibalaji on 12/05/20.
//  Copyright © 2020 saibalaji. All rights reserved.
//

import UIKit
@IBDesignable
class CustomSwitch: UISwitch {

    
    override func prepareForInterfaceBuilder() {
       
        getAttributes()
    }
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       getAttributes()
        
        
    }
    
    func getAttributes()
    {
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       thumbTintColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 0.5)
        layer.shadowOpacity = 0.75
    }

}
