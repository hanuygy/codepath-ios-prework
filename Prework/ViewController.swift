//
//  ViewController.swift
//  Prework
//
//  Created by Jo on 7/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var tipPercentageDisplay: UILabel!
    @IBOutlet weak var partySizeStepper: UIStepper!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var defaultTip: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the title in Navigation Bar
        self.title = "Tip Calculator"
        
        UserDefaults.standard.float(forKey: "defaultTip")
       
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tip = UserDefaults.standard.object(forKey: "defaultTip") as? Float{
                defaultTip = tip
            }
        
        billAmountTextField.becomeFirstResponder()
        
        // Update the percentage value
        if defaultTip != 0.0 {
            tipPercentageDisplay.text = "\(Int(defaultTip))%"
            tipControl.value = defaultTip
        }
        
        // Get bill amount from the bill text field input
        let bill = Double(billAmountTextField.text!) ?? 0

        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage =  Double(Int(tipControl.value))
        let tip = bill * (tipPercentage / 100.0)

        // Get the part size
        let partySize = partySizeStepper.value

        // Get the total per person
        let total = (bill + tip) / partySize

        // Update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)

        // Update total amount per person
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    // responsive to tip changes
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount from the bill text field input
        let bill = Double(billAmountTextField.text!) ?? 0

        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage =  Double(Int(tipControl.value))
        let tip = bill * (tipPercentage / 100.0)

        // Get the part size
        let partySize = partySizeStepper.value

        // Get the total per person
        let total = (bill + tip) / partySize

        // Update the percentage value
        tipPercentageDisplay.text = "\(Int(tipControl.value))%"

        // Update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)

        // Update total amount per person
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    // responsive to party size changes
    @IBAction func getPartySize(_ sender: Any) {
        
        // Get bill amount from the bill text field input
        let bill = Double(billAmountTextField.text!) ?? 0

        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage = Double(Int(tipControl.value))
        let tip = bill * (tipPercentage / 100.0)

        // Get the part size
        let partySize = partySizeStepper.value

        // Get the total per person
        let total = (bill + tip) / partySize
        
        // Update the percentage value
        tipPercentageDisplay.text = "\(Int(tipControl.value))%"
        
        // Update party size
        partySizeLabel.text = "\(Int(partySizeStepper.value))"

        // Update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)

        // Update total amount per person
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

