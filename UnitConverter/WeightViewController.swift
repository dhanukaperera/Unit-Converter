//
//  FirstViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/10/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var txtGram: UITextField!
    @IBOutlet weak var txtKg: UITextField!
    @IBOutlet weak var txtPound: UITextField!
    @IBOutlet weak var txtOunce: UITextField!
    
    let weights = Weight()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertGramToOtherUnits(_ sender: UITextField) {
        var grams = Float32(txtGram.text!)
        
        if grams == nil {
            grams = 0.0
        }
        
        txtKg.text = String(weights.convertGtoKg(g: grams))
        txtPound.text = String(weights.convertGtoPound(g: grams))
        txtOunce.text = String(weights.convertGToOunce(g: grams))
    }
    
    @IBAction func convertKgToOtherUnits(_ sender: UITextField) {
        var kg = Float32(txtKg.text!)
        
        if kg == nil {
            kg = 0.00
        }
        
        txtGram.text = String(weights.convertKgToG(kg: kg))
        txtPound.text = String(weights.convertKgToPounds(kg: kg))
        txtOunce.text = String(weights.convertKgToOunce(kg: kg))
        
    }
    
    @IBAction func convertPoundToOtherUnits(_ sender: UITextField) {
        var pound = Float32(txtPound.text)
        
        if pound == nil {
            pound = 0
        }
        
        txtGram.text = String(weights.convertPoundsToG(pounds: pound))
        txtKg.text = String(weights.convertPoundsToKg(pounds: pound))
        txtOunce.text = String(weights.convertPoundsToOunce(pounds: pound))
    }
    
    
}

