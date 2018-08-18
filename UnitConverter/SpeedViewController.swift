//
//  SpeedViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    // Create IBOutlets for TextFields
    @IBOutlet weak var txtMps: UITextField!
    @IBOutlet weak var txtFpm: UITextField!
    @IBOutlet weak var txtKmph: UITextField!
    @IBOutlet weak var txtMph: UITextField!

    // Get the Singleton Speed Instance
    let speed = Speed.getInstance()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    
    // Update the convertions in EditText Action
    @IBAction func convertMpsToOther(_ sender: UITextField) {
        if !(txtMps.text!.isEmpty) {
             let mps = Float32(txtMps.text!)
            txtFpm.text = String(speed.convertMeterPerSecToFeetPerMin(mps: mps!))
            txtKmph.text = String(speed.convertMeterPerSecToKmPerHour(mps: mps!))
            txtMph.text = String(speed.convertMeterPerSecToMilesPerHour(mps: mps!))
        }
    }
    
    @IBAction func convertFpmToOther(_ sender: UITextField) {
        if !(txtFpm.text!.isEmpty) {
             let fpm = Float32(txtFpm.text!)
            txtMps.text = String(speed.convertFeetPerMinToMeterPerSec(fpm: fpm!))
            txtKmph.text = String(speed.convertFeetPerMinToKmPerHour(fpm: fpm!))
            txtMph.text = String(speed.convertFeetPerMinToMilesPerHour(fpm: fpm!))
        }
    }
    
    
    @IBAction func convertKphToOther(_ sender: UITextField) {
        if !(txtKmph.text!.isEmpty) {
             let kph = Float32(txtKmph.text!)
            txtMps.text = String(speed.convertKmPerHourToMeterPerSec(kmps: kph!))
            txtFpm.text = String(speed.convertKmPerHourToFeetPerMin(kmps: kph!))
            txtMph.text = String(speed.convertKmPerHourToMilesPerHour(kmps: kph!))
        }
    }
    
    @IBAction func convertToMphToOther(_ sender: UITextField) {
        if !(txtMph.text!.isEmpty) {
            let  mph = Float32(txtMph.text!)
            txtMps.text = String(speed.convertMilesPerHourToMetersPerSec(mph: mph!))
            txtFpm.text = String(speed.convertMilesPerHourToFeetPerMin(mph: mph!))
            txtKmph.text = String(speed.convertMilesPerHourToKmPerHour(mph: mph!))
        }
    }
    
    
    @IBAction func clearMps(_ sender: UITextField) {
        txtMps.text = ""
    }
    
    @IBAction func clearFpm(_ sender: UITextField) {
        txtFpm.text = ""
    }
    
    @IBAction func clearKmph(_ sender: UITextField) {
        txtKmph.text = ""
    }
    
    @IBAction func clearMph(_ sender: UITextField) {
        txtMph.text = ""
    }
    
   
    
}
