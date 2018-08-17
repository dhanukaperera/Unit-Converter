//
//  Weight.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/17/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import Foundation

class Weight{
    
    // Gram to other units
    func convertGtoKg(g : Float32) -> Float32 {
        return g * 0.001
    }
    
    func convertGtoPound(g:Float32) -> Float32 {
        return g * 0.00220462
    }
    
    func convertGtoOunce(g:Float32) -> Float32 {
        return g * 0.035274
    }
    
    //  Kg to other units
    func convertKgToG(kg:Float32) -> Float32 {
        return kg * 1000
    }
    
    func convertKgtoPounds(kg:Float32) -> Float32 {
        return kg * 2.20462
    }
    
    func convertKgToOunce(kg:Float32) -> Float32 {
        return kg * 35.274
    }
    
    // Pounds to other units
    func convertPoundsToG(pounds:Float32) -> Float32 {
        return pounds * 453.592
    }
    
    func convertPoundsToKg(pounds:Float32) -> Float32 {
        return pounds * 0.453592
    }
    
    func convertPoundsToOunce(pounds:Float32) -> Float32 {
        return pounds * 16
    }
    
    // 
}
