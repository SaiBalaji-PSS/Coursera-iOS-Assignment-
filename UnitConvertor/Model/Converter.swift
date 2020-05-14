//
//  Converter.swift
//  UnitConvertor
//
//  Created by saibalaji on 12/05/20.
//  Copyright © 2020 saibalaji. All rights reserved.
//

import Foundation


class Convertor
{
    func convertkmtomiles(km :Double) -> Double
    {
        
        let miles =  km * 0.62137
        return miles
        
    }
    
    func convertmilestokm(mile :Double) -> Double
    {
        let km = mile / 0.62137
        return km
    }
}
