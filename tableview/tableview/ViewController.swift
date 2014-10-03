//
//  ViewController.swift
//  tableview
//
//  Created by Student on 10/3/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellIdentifier = "cellIdentifier"
    var tableData = ["Bus","Helicopter","Truck"]
    @IBOutlet var tabView: UITableView!
    
    
    override func viewDidLoad()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

