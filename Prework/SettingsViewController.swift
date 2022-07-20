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
    
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(defaultTipsSlider.value, forKey: "defaultTip")
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {
        defaultTipsDisplay.text = "\(Int(defaultTipsSlider.value))%"
    }
}
