//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jo on 7/12/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var defaultTipsSlider: UISlider!
    @IBOutlet weak var defaultTipsDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendSettingBackButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {
        defaultTipsDisplay.text = "\(Int(defaultTipsSlider.value))%"
    }
}
