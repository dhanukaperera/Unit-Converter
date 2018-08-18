//
//  Speed.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import Foundation

class Speed {
    
    // Meters per seconds convertions
    func convertMeterPerSecToFeetPerMin(mps:Float32) -> Float32 {
        return mps * 196.85
    }
    
    func convertMeterPerSecToKmPerHour(mps:Float32) -> Float32 {
        return mps * 3.6
    }
    
    func convertMeterPerSecToMilesPerHour(mps:Float32) -> Float32 {
        return mps * 2.23694
    }
    
    // Feet per  min convertions
    func convertFeetPerMinToMeterPerSec(fpm:Float32) -> Float32 {
        return fpm * 0.00508
    }
    
    func  convertFeetPerMinToKmPerHour(fpm:Float32) -> Float32 {
        return fpm * 0.018288
    }
    
    func convertFeetPerMinToMilesPerHour(fpm:Float32) -> Float32 {
        return fpm * 0.0113636
    }
    
    // Kilometer per hour converstions
    func convertKmPerHourToMeterPerSec(kmps:Float32) -> Float32 {
        return kmps * 1000
    }
    
    func convertKmPerHourToFeetPerMin(kmps:Float32) -> Float32 {
        return kmps * 196850
    }
    
    func convertKmPerHourToMilesPerHour(kmps:Float32) -> Float32 {
        return kmps * 2236.94
    }
    
    // Miles per hour convertions
    func milesPerHourToMetersPerSec(mph:Float32) -> Float32 {
        return mph * 0.44704
    }
    
    func milesPerHourToFeetPerMin(mph:Float32) -> Float32{
        return mph * 88
    }
    
    func milesPerHourToKmPerHour (mph:Float32) -> Float32 {
        return mph * 1.60934
    }
    
}
