//
//  ViewController.swift
//  Exam1_55011221023_2
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var name_input: UITextField!
    
 
    @IBAction func tatol_bt(sender: AnyObject) {
        name_input.text="111"
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

