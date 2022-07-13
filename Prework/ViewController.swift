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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the title in Navigation Bar
        self.title = "Tip Calculator"
        
    }
    
    // responsive to tip changes
    @IBAction func calculateTip(_ sender: Any) {
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

        // Update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)

        // Update total amount per person
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    // responsive to party size changes
    @IBAction func getPartySize(_ sender: Any) {
        // Update party size
        partySizeLabel.text = "\(Int(partySizeStepper.value))"

        // Get bill amount from the bill text field input
        let bill = Double(billAmountTextField.text!) ?? 0

        // Get total tip by multiplying tip * tipPercentage
        let tipPercentage = Double(Int(tipControl.value))
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
    
    
}

