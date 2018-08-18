//
//  Speed.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import Foundation

class Speed {
    
    // Creating Singleton object of the Speed class
    private static var speedInstance: Speed = {
        let speed = Speed()
        return speed
    }()
    
    // private initializer
    private init(){}
    
    // returning the Singleton Speed object
    class func getInstance() ->Speed {
        return speedInstance
    }
    
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
        return kmps * 0.277778
    }
    
    func convertKmPerHourToFeetPerMin(kmps:Float32) -> Float32 {
        return kmps * 54.6807
    }
    
    func convertKmPerHourToMilesPerHour(kmps:Float32) -> Float32 {
        return kmps * 0.621371
    }
    
    // Miles per hour convertions
    func convertMilesPerHourToMetersPerSec(mph:Float32) -> Float32 {
        return mph * 0.44704
    }
    
    func convertMilesPerHourToFeetPerMin(mph:Float32) -> Float32{
        return mph * 88
    }
    
    func convertMilesPerHourToKmPerHour (mph:Float32) -> Float32 {
        return mph * 1.60934
    }
    
}
