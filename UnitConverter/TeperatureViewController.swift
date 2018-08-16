//
//  SecondViewController.swift
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
    
    let temp = Temperature()
    
    @IBAction func celsiusTextChanged(_ sender: UITextField) {
     
       // let cel   = Float32(txtCelsius.text!)
       // txtKelvin.text = String(temp.convertCtoK(C: (cel!)))
      
    }
    
//    @IBAction func convert(_ sender: UITextField) {
//       // let cel   = Float32(txtFahrenheit.text!)
//       // txtKelvin.text = String(temp.convertCtoK(C: (cel!)))
//    }
    
   
    @IBAction func ccc(_ sender: UITextField) {
        var cel   = Float32(txtCelsius.text!)
        
        if cel == nil {
            cel = 0.0
        }
        
        txtKelvin.text = String(temp.convertCtoK(C: (cel)!))
        txtFahrenheit.text = String(temp.convertCtoF(C: ((cel))!))
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        txtCelsius.text = "0"
//        txtFahrenheit.text = "0"
//        txtKelvin.text = "0"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

