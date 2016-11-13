//
//  ViewController.swift
//  Dipper
//
//  Created by Daniel Koester on 11/7/16.
//  Copyright © 2016 Daniel Koester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tonnesTextField: UITextField!
    @IBOutlet weak var tonnesLabel: UILabel!
    @IBOutlet weak var passesTextField: UITextField!
    @IBOutlet weak var materialDensityTextField: UITextField!
    @IBOutlet weak var fillFactorTextField: UITextField!
    @IBOutlet weak var dipperStruckLabel: UILabel!
    @IBOutlet weak var suspendedPayloadLabel: UILabel!
    @IBOutlet weak var hoistStallLabel: UILabel!
    
    @IBOutlet weak var dipperDensityTextField: UITextField!
    @IBOutlet weak var linerDensityTextField: UITextField!
    
    @IBOutlet weak var suspendedPayloadOutputLabel: UILabel!
    @IBOutlet weak var suspendedPayloadUtilizationLabel: UILabel!
    
    @IBAction func submit(_ sender: AnyObject) {
        let passes = Float(passesTextField.text!)!
        let tonnes = Float(tonnesTextField.text!)!
        let materialDensity = Float(materialDensityTextField.text!)!
        let fillFactor = Float(fillFactorTextField.text!)!
        let dipperDensity = Float(dipperDensityTextField.text!)!
        let linerDensity = Float(linerDensityTextField.text!)!
        
        
        let dipperSize = tonnes/passes
        let dipperStruckCapacity = (dipperSize/materialDensity)/fillFactor
        
        let suspendedPayload = dipperSize + (dipperStruckCapacity * dipperDensity) + (dipperStruckCapacity * linerDensity)
        let suspendedUtilization = suspendedPayload/217.72
        
        tonnesLabel.text = String(dipperStruckCapacity)
        suspendedPayloadOutputLabel.text = String(suspendedPayload)
        suspendedPayloadUtilizationLabel.text = String(suspendedUtilization)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

