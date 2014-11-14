//
//  ViewController.swift
//  moving_slong
//
//  Created by Student on 11/7/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let square = UIView()
    square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
    square.backgroundColor = UIColor.redColor()
    
    self.view.addSubview(square)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}