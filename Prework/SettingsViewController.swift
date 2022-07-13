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
    
    
    @IBAction func setDefaultTip(_ sender: Any) {
        defaultTipsDisplay.text = "\(Int(defaultTipsSlider.value))%"
    }
    
    
    @IBAction func closeSettings(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
