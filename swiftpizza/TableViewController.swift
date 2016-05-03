//
//  TableViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 03-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class TableViewController : UITableViewController{
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        prepareForNextViewController(segue.destinationViewController)
    }
    
    func prepareForNextViewController(nextViewController : UIViewController){
        
    }
    
    func gaNaarToppings(){
        self.performSegueWithIdentifier("showToppings", sender: self)
    }
}