//
//  ViewController.swift
//  TipCalulator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var taxtPctSlider: UISlider!
    @IBOutlet var taxtPctLabel : UILabel!
    @IBOutlet var resultsTextView: UITextView!
    
    @IBAction func calculatrTapped(sender : AnyObject){
        
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for(tipPct, tipValue) in possibleTips {
            
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    
    }
    @IBAction func taxPercentageChanged(sender : AnyObject){
        tipCalc.taxPct = Double(taxtPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTextField.resignFirstResponder()
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25,taxPct:0.06)
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        taxtPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxtPctLabel.text = "Tex Percentage (\(Int(taxtPctSlider.value))%)"
        resultsTextView.text = ""
        
    }
    
 
  
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

