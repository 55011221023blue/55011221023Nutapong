//
//  ViewController.swift
//  UIKit_animation
//
//  Created by Student on 11/7/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var square: UIView!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var snap: UISnapBehavior!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square = UIView(frame: CGRect(x: 50, y: 500, width: 20, height: 20))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
            
        
        
        
        let barrier = UIView(frame: CGRect(x: 100, y: 300, width: 20, height: 20))
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        
        let barrier2 = UIView(frame: CGRect(x: 100, y: 100, width: 20, height: 20))
        barrier2.backgroundColor = UIColor.greenColor()
        view.addSubview(barrier2)
        
        let barrier3 = UIView(frame: CGRect(x: 100, y: 100, width: 20, height: 20))
        barrier3.backgroundColor = UIColor.blueColor()
        view.addSubview(barrier3)
        
        
        
        
        
        collision = UICollisionBehavior(items: [square,barrier,barrier2,barrier3])
        collision.translatesReferenceBoundsIntoBoundary = true
        
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square,barrier,barrier2,barrier3])
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square,barrier,barrier2,barrier3])
        itemBehaviour.elasticity = 1.1
        animator.addBehavior(itemBehaviour)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func  touchesMoved(touches: NSSet,withEvent event:UIEvent){
        if(snap != nil){
            animator.removeBehavior(snap)
            
        }
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
        
    }
    
    
}

