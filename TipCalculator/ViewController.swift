//
//  ViewController.swift
//  TipCalculator
//
//  Created by beck on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentTxt: UITextField!
    @IBOutlet weak var amountTxt: UITextField!
    @IBOutlet weak var CalcTipBtn: UIButton!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let amount:Double = Double(amountTxt.text!)!
        
        let tipAmount:Double = (Double(tipPercentTxt.text!)! / 100) * Double(amountTxt.text!)!
        
        tipAmountLbl.text = String(format: "Tip amount:       $%.02f", tipAmount)
        totalAmountLbl.text = String(format: "Total amount:    $%.02f", amount + tipAmount)
            
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any a dditional setup after loading the view.
    }


}

