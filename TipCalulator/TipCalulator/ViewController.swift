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
    var total_re = 0
    var val = 0.0
    var price = 0.0
    var tt = ""
    
    
    @IBOutlet var tox: UITextField!
    @IBOutlet var taxtPctSlider: UISlider!
    @IBOutlet var data2: UITextField!
   
    
    @IBOutlet var taxtPctLabel : UILabel!
    @IBOutlet var resultsTextView: UITextView!
    
    @IBAction func calculatrTapped(sender : AnyObject){
        val = totalTextField.text
        price = data2.text.toInt()!
        total_re = val + price
        tt = String(total_re)
        tox.text = tt
   

    }
    @IBAction func taxPercentageChanged(sender : AnyObject){
        tipCalc.taxPct = Double(taxtPctSlider.value) / 100.0
        
    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTextField.resignFirstResponder()
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25,taxPct:0.06)
    
    
 
  
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

