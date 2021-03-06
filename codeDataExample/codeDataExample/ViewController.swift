//
//  ViewController.swift
//  codeDataExample
//
//  Created by student on 10/31/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
    
    var items = [NSManagedObject]()
    @IBOutlet weak var tableView: UITableView!
    @IBAction func additem(sender: AnyObject) {
        
        var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save",
            style: .Default) { (action: UIAlertAction!) -> Void  in
                
                let textField = alert.textFields![0] as UITextField
                self.saveName(textField.text)
                self.tableView.reloadData()
                
        
        }
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default) { (action:UIAlertAction!) -> Void in
            
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView:UITableView,
        numberOfRowsinSection section: Int) -> Int{
            return items.count
    
    }
    func tableView(tableView: UITableView,cellForRowAtIndexPath
        indexPath: NSIndexPath) ->UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
            let item = items[indexPath.row]
            cell.textLabel!.text = item.valueForKey("name") as String?
            return cell
    }
    func saveName(name: String){
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        item.setValue(name, forKey: "name")
        
        var error:NSError?
        if !managedContext.save(&error){
                println("clold not save \(error),\(error?.userInfo) ")
        }
        items.append(item)
        
    }

}

