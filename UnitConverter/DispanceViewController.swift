//
//  DispanceViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class DispanceViewController: UIViewController {

    
    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtFoot: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtKm: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    
    let distance = Distance()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertMeterToOther(_ sender: UITextField) {
        var m = Float32(txtMetre.text!)
        
        if m == nil {
            m = 0.0
        }
        
        txtFoot.text = String(distance.convertMetretoFoot(m: m!))
        txtYard.text = String(distance.convertMetreToYard(m: m!))
        txtKm.text = String(distance.convertMetreToKm(m: m!))
        txtMile.text = String(distance.convertMetreToMile(m: m!))
        
    }
    
    @IBAction func convertFootToOther(_ sender: UITextField) {
        var ft  = Float32(txtFoot.text!)
        
        if ft == nil {
            ft = 0.0
        }
        
        txtMetre.text = String(distance.convertFootToMetre(ft: ft!))
        txtYard.text = String(distance.convertFootToYard(ft: ft!))
        txtKm.text = String(distance.convertFootToKm(ft: ft!))
        txtMile.text = String(distance.convertFootToMile(ft: ft!))

    }
    
    @IBAction func convertYardToOtherUnits(_ sender: UITextField) {
        var y = Float32(txtYard.text!)
        
        if y == nil {
            y = 0.0
        }
        
        txtMetre.text = String(distance.convertYardToMetr(y: y!))
        txtFoot.text = String(distance.convertYardToFoot(y: y!))
        txtKm.text = String(distance.convertYardToKm(y: y!))
        txtMile.text = String(distance.convertYardToMile(y: y!))

    }
    
    @IBAction func convertKmToOtherUnits(_ sender: UITextField) {
        var km = Float32(txtKm.text!)
        
        if km == nil {
            km = 0.0
        }
        
        txtMetre.text = String(distance.convertKmToMeter(km: km!))
        txtFoot.text = String(distance.convertKmToFoot(km: km!))
        txtYard.text = String(distance.convertKmToYard(km: km!))
        txtMile.text = String(distance.convertKmToMile(km: km!))

    }
    
    @IBAction func convertMileToOtherUnits(_ sender: UITextField) {
        var mile = Float32(txtMile.text!)
        
        if mile == nil {
            mile = 0.0
        }
        
        txtMetre.text = String(distance.convertMileToMetre(m: mile!))
        txtFoot.text = String(distance.convertMileToFoot(m: mile!))
        txtYard.text = String(distance.convertMileToYard(m: mile!))
        txtKm.text = String(distance.convertMileToKm(m: mile!))

    }
    
    @IBAction func clearMetre(_ sender: UITextField) {
        txtMetre.text = ""
    }
    @IBAction func clearFoot(_ sender: UITextField) {
        txtFoot.text = ""
    }
    
    @IBAction func clearYard(_ sender: UITextField) {
        txtYard.text = ""
    }
    @IBAction func clearKm(_ sender: UITextField) {
        txtKm.text = ""
    }
    
    @IBAction func clearMile(_ sender: UITextField) {
        txtMile.text = ""
    }
    
}
