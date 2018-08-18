//
//  DispanceViewController.swift
//  UnitConverter
//
//  Created by Dhanuka Perera on 8/18/18.
//  Copyright © 2018 Dhanuka Perera. All rights reserved.
//

import UIKit

class DispanceViewController: UIViewController {

    // Create IBOutlets for TextFields
    @IBOutlet weak var txtMetre: UITextField!
    @IBOutlet weak var txtFoot: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtKm: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    
    // Get the Singleton Distance Instance
    let distance = Distance.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Update the convertions in EditText Action
    @IBAction func convertMeterToOtherUnits(_ sender: UITextField) {
        if !(txtMetre.text!.isEmpty) {
            let m = Float32(txtMetre.text!)
            txtFoot.text = String(distance.convertMetretoFoot(m: m!))
            txtYard.text = String(distance.convertMetreToYard(m: m!))
            txtKm.text = String(distance.convertMetreToKm(m: m!))
            txtMile.text = String(distance.convertMetreToMile(m: m!))
        }
    }
    
    @IBAction func convertFootToOtherUnits(_ sender: UITextField) {
        if !(txtFoot.text!.isEmpty) {
            let ft  = Float32(txtFoot.text!)
            txtMetre.text = String(distance.convertFootToMetre(ft: ft!))
            txtYard.text = String(distance.convertFootToYard(ft: ft!))
            txtKm.text = String(distance.convertFootToKm(ft: ft!))
            txtMile.text = String(distance.convertFootToMile(ft: ft!))
        }
    }
    
    @IBAction func convertYardToOtherUnits(_ sender: UITextField) {
        if !(txtYard.text!.isEmpty) {
            let y = Float32(txtYard.text!)
            txtMetre.text = String(distance.convertYardToMetr(y: y!))
            txtFoot.text = String(distance.convertYardToFoot(y: y!))
            txtKm.text = String(distance.convertYardToKm(y: y!))
            txtMile.text = String(distance.convertYardToMile(y: y!))
        }
    }
    
    @IBAction func convertKmToOtherUnits(_ sender: UITextField) {
        if !(txtKm.text!.isEmpty) {
            let km = Float32(txtKm.text!)
            txtMetre.text = String(distance.convertKmToMeter(km: km!))
            txtFoot.text = String(distance.convertKmToFoot(km: km!))
            txtYard.text = String(distance.convertKmToYard(km: km!))
            txtMile.text = String(distance.convertKmToMile(km: km!))
        }
    }
    
    @IBAction func convertMileToOtherUnits(_ sender: UITextField) {
        if !(txtMile.text!.isEmpty) {
            let mile = Float32(txtMile.text!)
            txtMetre.text = String(distance.convertMileToMetre(m: mile!))
            txtFoot.text = String(distance.convertMileToFoot(m: mile!))
            txtYard.text = String(distance.convertMileToYard(m: mile!))
            txtKm.text = String(distance.convertMileToKm(m: mile!))
        }
    }
    
    // Clear Text Fields
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
