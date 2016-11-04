//
//  TableViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 03-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class TableViewController : UITableViewController{
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        prepareForNextViewController(segue.destination)
    }
    
    func prepareForNextViewController(_ nextViewController : UIViewController){
        
    }
    
    func gaNaarToppings(){
        self.performSegue(withIdentifier: "showToppings", sender: self)
    }
    
    func gaNaarBestellen(){
        self.performSegue(withIdentifier: "showOrder", sender: self)
    }
}
