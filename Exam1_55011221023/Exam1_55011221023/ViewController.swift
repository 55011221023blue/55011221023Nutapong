//
//  ViewController.swift
//  Exam1_55011221023
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate  {

  
    

    @IBOutlet var name_input: UITextField!
    @IBOutlet var valume_input: UITextField!
    @IBOutlet var price_input: UITextField!
    @IBOutlet var total_output: UITextField!
    
    @IBAction func dow_tatol(sender: UIButton, forEvent event: UIEvent) {
        name_input.text = "xx"
    }
    
    @IBOutlet var table_output: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

