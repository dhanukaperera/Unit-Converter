//
//  WeightViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/10/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    // Create IBOutlets for TextFields
    @IBOutlet weak var txtGram: UITextField!
    @IBOutlet weak var txtKg: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    @IBOutlet weak var txtOunce: UITextField!
    
    // Get the Singleton Weight Instance
    let weights = Weight.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Update the convertions in EditText Action
    @IBAction func convertGramToOtherUnits(_ sender: UITextField) {
        if !(txtGram.text!.isEmpty) {
            let grams = Float32(txtGram.text!)
            txtKg.text = String(weights.convertGtoKg(g: grams!))
            txtPound.text = String(weights.convertGtoPound(g: grams!))
            txtOunce.text = String(weights.convertGtoOunce(g: grams!))
        }
    }
    
    @IBAction func convertKgToOtherUnits(_ sender: UITextField) {
        if !(txtKg.text!.isEmpty) {
            let kg = Float32(txtKg.text!)
            txtGram.text = String(weights.convertKgToG(kg: kg!))
            txtPound.text = String(weights.convertKgtoPounds(kg: kg!))
            txtOunce.text = String(weights.convertKgToOunce(kg: kg!))
        }
    }
    
    @IBAction func convertPoundToOtherUnits(_ sender: UITextField) {
        if !(txtPound.text!.isEmpty) {
            let pound = Float32(txtPound.text!)
            txtGram.text = String(weights.convertPoundsToG(pounds: pound!))
            txtKg.text = String(weights.convertPoundsToKg(pounds: pound!))
            txtOunce.text = String(weights.convertPoundsToOunce(pounds: pound!))
        }
    }
    
    @IBAction func convertOunceToOtherUnits(_ sender: UITextField) {
        if !(txtOunce.text!.isEmpty) {
            let ounce = Float32(txtOunce.text!)
            txtGram.text = String(weights.convertOunceToG(ounce: ounce!))
            txtKg.text = String(weights.convertOunceToKg(ounce: ounce!))
            txtPound.text = String(weights.convertOunceToPounds(ounce: ounce!))
        }
    }
    
    // Clear Text Fields
    @IBAction func clearGram(_ sender: UITextField) {
        txtGram.text = ""
    }
    
    @IBAction func clearKg(_ sender: UITextField) {
        txtKg.text = ""
    }
    
    @IBAction func txtPound(_ sender: UITextField) {
        txtPound.text = ""
    }
    
    @IBAction func clearOunce(_ sender: UITextField) {
        txtOunce.text = ""
    }
    
}

