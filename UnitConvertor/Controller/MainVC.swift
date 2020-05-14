//
//  ViewController.swift
//  UnitConvertor
//
//  Created by saibalaji on 12/05/20.
//  Copyright © 2020 saibalaji. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var selectswitchcontrol: UISwitch!
    @IBOutlet weak var kmlbl: UILabel!
    @IBOutlet weak var milelbl: UILabel!
    
    @IBOutlet weak var valu2txt: CustomTextView!
    @IBOutlet weak var value1txt: CustomTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        kmlbl.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        value1txt.isEnabled = false
        
        
        let calculatebtn = UIButton(frame: CGRect(x: 0, y: 0, width:view.frame.size.width, height: 30))
        
        calculatebtn.setTitle("CONVERT", for: .normal)
        
        calculatebtn.backgroundColor = #colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)
        
        calculatebtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calculatebtn.addTarget(self, action: #selector(convert), for: .touchUpInside)
        
        
        valu2txt.inputAccessoryView = calculatebtn
        value1txt.inputAccessoryView = calculatebtn
        
        
    }

    @IBAction func clear(_ sender: Any) {
        
        value1txt.text = ""
        valu2txt.text = ""
    }
    
    @IBAction func selectswitch(_ sender: UISwitch) {
        
        if selectswitchcontrol.isOn
        {
            kmlbl.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            milelbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            value1txt.isEnabled = false
            valu2txt.isEnabled = true
            
        }
        
        
        else
        {
            milelbl.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            kmlbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            valu2txt.isEnabled = false
            value1txt.isEnabled = true
        }
        
        
    }
    
    
    @objc func convert()
    {
        let  convert = Convertor()
        if selectswitchcontrol.isOn
        {
            
            if let kilometer = valu2txt.text
            {
                if let k = Double(kilometer)
                {
                    value1txt.text = String(convert.convertkmtomiles(km: k))
                    view.endEditing(true)
                    
                }
            }
        }
        
        else
        {
           
            if let miles = value1txt.text
            {
                if let m = Double(miles)
                {
                    valu2txt.text = String(convert.convertmilestokm(mile: m))
                    view.endEditing(true)
                }
            }
        }
       
        
    }
}

