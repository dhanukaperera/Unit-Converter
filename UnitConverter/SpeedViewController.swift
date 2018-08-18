//
//  SpeedViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    let speed = Speed()
    
    @IBOutlet weak var txtMps: UITextField!
    @IBOutlet weak var txtFpm: UITextField!
    @IBOutlet weak var txtKmph: UITextField!
    @IBOutlet weak var txtMph: UITextField!
    
    
    @IBAction func convertMpsToOther(_ sender: UITextField) {
        var mps = Float32(txtMph.text!)
        
        if mps == nil {
            mps = 0.0
        }
        
        txtFpm.text = String(speed.convertMeterPerSecToFeetPerMin(mps: mps!))
        txtKmph.text = String(speed.convertMeterPerSecToKmPerHour(mps: mps!))
        txtMph.text = String(speed.convertMeterPerSecToMilesPerHour(mps: mps!))

    }
    
    @IBAction func convertFpmToOther(_ sender: UITextField) {
        var fpm = Float32(txtFpm.text!)
        
        if fpm == nil {
            fpm = 0.0
        }
        
        txtFpm.text = String(speed.convertFeetPerMinToMeterPerSec(fpm: fpm!))
        txtKmph.text = String(speed.convertFeetPerMinToKmPerHour(fpm: fpm!))
        txtMph.text = String(speed.convertFeetPerMinToMilesPerHour(fpm: fpm!))
        
    }
    
    
    @IBAction func convertKphToOther(_ sender: UITextField) {
        var kph = Float32(txtKmph.text!)
        
        if kph == nil {
            kph = 0.0
        }
        
        txtMph.text = String(speed.convertKmPerHourToMeterPerSec(kmps: kph!))
        txtFpm.text = String(speed.convertKmPerHourToFeetPerMin(kmps: kph!))
        txtMph.text = String(speed.convertKmPerHourToMilesPerHour(kmps: kph!))

    }
    
    @IBAction func convertToMphToOther(_ sender: UITextField) {
       var  mph = Float32(txtMph.text!)
        
        if mph == nil {
            mph = 0.0
        }
        
       // txtMph.text = String(speed.milesPerHourToMetersPerSec)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
