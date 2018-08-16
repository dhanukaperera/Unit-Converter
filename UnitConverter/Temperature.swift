//
//  Temperature.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/16/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import Foundation

class Temperature{
    let celsius : Float32;
    let fahrenheit : Float32
    let kelvin : Float32
    
    init() {
        self.celsius = 0.0
        self.fahrenheit = 0.0
        self.kelvin = 0.0
    }
    // celsius converstions
    func convertCtoF(C:Float32) -> Float32 {
        return C*(9/5)+32
    }
    
    func convertCtoK(C:Float32) -> Float32 {
        return C+273.0
    }
    
   // fahrenheit converstions
    func convertFtoC(F:Float32) -> Float32 {
        return (F-32)*5/9
    }
    
    func convertFtoK(F:Float32) -> Float32 {
        return convertCtoK(C:convertFtoC(F:F))
    }
    
    // kelvin converstions
    func convertKtoC(K:Float32) -> Float32 {
        return K - 273.0
    }
    
    func convertKtoF(K:Float32) -> Float32 {
        return convertCtoF(C:convertKtoC(K:K))
    }
}
