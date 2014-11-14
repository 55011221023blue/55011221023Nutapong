//
//  ViewController.swift
//  q_game
//
//  Created by Student on 11/14/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var snap: UISnapBehavior!
    var pq: UIImageView!
    var ff: UIView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      ff = UIView(frame: CGRectMake(0,0,300,300))
        
        var imageView = UIImageView(frame: CGRectMake(0, 0, 375, 600));
        var image = UIImage(named: "bg.png");
        imageView.image = image;
        self.view.addSubview(imageView);
        
        
        var p1 = UIImageView(frame: CGRectMake(100, 150, 30, 30));
        p1.image  = UIImage(named: "red.png");
        self.view.addSubview(p1);
        
        var p2 = UIImageView(frame: CGRectMake(150, 150, 30, 30));
        p2.image  = UIImage(named: "yellow.png");
        self.view.addSubview(p2);
        
        
        var pw = UIImageView(frame: CGRectMake(100, 220, 30, 30));
        pw.image  = UIImage(named: "w.png");
        self.view.addSubview(pw);
        
        pq = UIImageView(frame: CGRectMake(180, 330, 3, 248));
        pq.image  = UIImage(named: "q.png");
        self.view.addSubview(pq);
        
        
        let br1 = UIView(frame: CGRect(x: 0 , y: 65, width: 43.5, height: 205))
       
        view.addSubview(br1)
        
        let br2 = UIView(frame: CGRect(x: 332 , y: 65, width: 43.5, height: 205))
        
        view.addSubview(br2)
        
        var y = 260;
        
        
        let br1d = UIView(frame: CGRect(x: 0 , y: 65+y, width: 43.5, height: 205))
       
        view.addSubview(br1d)
        
        let br2d = UIView(frame: CGRect(x: 332 , y: 65+y, width: 43.5, height: 205))
       
        view.addSubview(br2d)
        
        let top = UIView(frame: CGRect(x: 67, y: 3, width: 245, height: 35))
        
        view.addSubview(top)
        
        let botom = UIView(frame: CGRect(x: 67, y: 558, width: 245, height: 35))
       
        view.addSubview(botom)
        
        let botom2 = UIView(frame: CGRect(x: 0, y: 558+35, width: 545, height: 35))
       
        view.addSubview(botom2)
      
        
        
        
        
        
        
        
        
        collision = UICollisionBehavior(items: [p1,p2,pw,pq])
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.addBoundaryWithIdentifier("p1", forPath: UIBezierPath(rect: br1.frame))
        collision.addBoundaryWithIdentifier("p2", forPath: UIBezierPath(rect: br2.frame))
        
        collision.addBoundaryWithIdentifier("p3", forPath: UIBezierPath(rect: br1d.frame))
        collision.addBoundaryWithIdentifier("p4", forPath: UIBezierPath(rect: br2d.frame))
        collision.addBoundaryWithIdentifier("p5", forPath: UIBezierPath(rect: botom.frame))
         collision.addBoundaryWithIdentifier("p6", forPath: UIBezierPath(rect: botom2.frame))
         collision.addBoundaryWithIdentifier("p7", forPath: UIBezierPath(rect: top.frame))

        
 
        collision.action = {        }
        
        
        
        
        
        
        animator = UIDynamicAnimator(referenceView: view)

           animator.addBehavior(collision)
        
        let itemBehaviour = UIDynamicItemBehavior(items: [p1,p2,pw])
        itemBehaviour.elasticity = 0.8
        animator.addBehavior(itemBehaviour)
        
        let itemBehaviour2 = UIDynamicItemBehavior(items: [pq])
        itemBehaviour2.elasticity = 0
      
        animator.addBehavior(itemBehaviour2)
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
        snap = UISnapBehavior(item: pq, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
        
    }


}

