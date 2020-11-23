//
//  ViewController.swift
//  tip
//
//  Created by Sai Pal on 11/22/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel1: UILabel!
    @IBOutlet weak var tipPercentageLabel1: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UILabel!
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amt
        let bill = Double(billAmountText.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        // Calculate tip
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        print(tip)
        print(total)
        // update tip
        tipPercentageLabel1.text = String(format: "$%.2f", tip)
        totalLabel1.text = String(format: "$%.2f", total)
        
        
    }
}

