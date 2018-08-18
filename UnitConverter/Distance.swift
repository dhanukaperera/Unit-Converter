//
//  Distance.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import Foundation

class Distance {
    
    // Metre convertions
    func convertMetretoFoot(m:Float32) -> Float32 {
        return m * 3.28084
    }
    
    func convertMetreToYard(m:Float32) -> Float32 {
        return m * 1.09361
    }
    
    func convertMetreToKm(m:Float32) -> Float32 {
        return m * 0.001
    }
    
    func convertMetreToMile(m:Float32) -> Float32 {
        return m * 0.000621371
    }
    
    // Foot convertions
    func convertFootToMetre(ft:Float32) -> Float32 {
        return ft * 0.3048
    }
    
    func convertFootToYard(ft:Float32) -> Float32 {
        return ft * 0.333333
    }
    
    func convertFootToKm(ft:Float32) -> Float32 {
        return ft * 0.0003048
    }
    
    func  convertFootToMile(ft:Float32) -> Float32 {
        return ft * 0.000189394
    }
    
    // Yard convertions
    func convertYardToMetr(y:Float32) -> Float32 {
        return y * 0.9144
    }
    
    func convertYardToFoot(y:Float32) -> Float32 {
        return y * 3
    }
    
    func convertYardToKm(y:Float32) -> Float32 {
        return y * 0.0009144
    }
    
    func convertYardToMile(y:Float32) -> Float32 {
        return y * 0.000568182
    }
    
    // Km convertions
    func convertKmToMeter(km:Float32) -> Float32 {
        return km * 1000
    }
    
    func convertKmToFoot(km:Float32) -> Float32 {
        return km * 1000
    }
    
    func convertKmToYard(km:Float32) -> Float32 {
        return km * 1093.61
    }
    
    func convertKmToMile(km:Float32) -> Float32 {
        return km * 0.621371
    }
    
    // Mile convertions
    func convertMileToMetre(m:Float32) -> Float32 {
        return m * 1609.34
    }
    
    func convertMileToFoot(m:Float32) -> Float32 {
        return m * 5280
    }
    
    func convertMileToYard(m:Float32) -> Float32 {
        return m * 1760
    }
    
    func convertMileToKm(m:Float32) -> Float32 {
        return m * 1.60934
    }
    
}
