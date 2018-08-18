//
//  TemperatureViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/10/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class TemperaturerViewController: UIViewController {

    // Create IBOutlets for TextFields
    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    
    // Get the Singleton Temperature Instance
    let temperature = Temperature.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Update the convertions in EditText Action
    @IBAction func convertCelsiusToOtherUnits(_ sender: UITextField) {
        if !(txtCelsius.text!.isEmpty) {
            let cel   = Float32(txtCelsius.text!)
            txtKelvin.text = String(temperature.convertCtoK(C: (cel)!))
            txtFahrenheit.text = String(temperature.convertCtoF(C: ((cel))!))
        }
    }
    
    @IBAction func convertFahrenheitToOtherUnits(_ sender: UITextField) {
        if !(txtFahrenheit.text!.isEmpty) {
            let fahrenheit   = Float32(txtFahrenheit.text!)
            txtCelsius.text = String(temperature.convertFtoC(F: (fahrenheit)!))
            txtKelvin.text = String(temperature.convertFtoK(F: (fahrenheit)!))
        }
    }
    
    @IBAction func convertKelvinToOtherUnits(_ sender: UITextField) {
        if !(txtKelvin.text!.isEmpty) {
            let kelvin   = Float32(txtKelvin.text!)
            txtCelsius.text = String(temperature.convertKtoC(K: (kelvin)!))
            txtFahrenheit.text = String(temperature.convertKtoF(K: (kelvin)!))
        }
    }
    
    // Clear Text Fields
    @IBAction func clearCelsius(_ sender: UITextField) {
        txtCelsius.text = ""
    }
    
    @IBAction func clearFahrenheit(_ sender: UITextField) {
         txtFahrenheit.text = ""
    }
    
    @IBAction func clearKelvin(_ sender: UITextField) {
        txtKelvin.text = ""
    }
    
}

