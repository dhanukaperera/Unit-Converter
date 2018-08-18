//
//  TeperatureViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/10/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class TeperatureViewController: UIViewController {

    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var txtKelvin: UITextField!
    
    let temp = Temperature.getInstance()
    
    @IBAction func ccc(_ sender: UITextField) {
        var cel   = Float32(txtCelsius.text!)
        
        if cel == nil {
            cel = 0.0
        }
        
        txtKelvin.text = String(temp.convertCtoK(C: (cel)!))
        txtFahrenheit.text = String(temp.convertCtoF(C: ((cel))!))
        
    }
    
    @IBAction func convertFToOther(_ sender: UITextField) {
        var fahrenheit   = Float32(txtFahrenheit.text!)
        
        if fahrenheit == nil {
            fahrenheit = 0.0
        }
        
        txtCelsius.text = String(temp.convertFtoC(F: (fahrenheit)!))
        txtKelvin.text = String(temp.convertFtoK(F: (fahrenheit)!))

    }
    
    @IBAction func convertKToOther(_ sender: UITextField) {
        var kelvin   = Float32(txtKelvin.text!)
        
        if kelvin == nil {
            kelvin = 0.0
        }
        
        txtCelsius.text = String(temp.convertKtoC(K: (kelvin)!))
        txtFahrenheit.text = String(temp.convertKtoF(K: (kelvin)!))

    }
    
    @IBAction func aaa(_ sender: UITextField) {
        txtCelsius.text = ""
    }
    
    @IBAction func clearFahrenheit(_ sender: UITextField) {
         txtFahrenheit.text = ""
    }
    
    @IBAction func clearKelvin(_ sender: UITextField) {
        txtKelvin.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

