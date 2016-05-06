//
//  ToppingsTableViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 03-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class ToppingsTableViewController : TableViewController{
    
    var pizza : Pizza? //TODO: de naam van de pizza moet de title van het scherm worden
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: toppings opvragen
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: geef het aantal te tonen regels terug
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = getToppingCell(indexPath)
        //TODO: naam van de topping tonen
        //TODO: vinkje (= accessoryType) tonen
        return cell
    }
    
    private func getToppingCell(indexPath : NSIndexPath) -> UITableViewCell{
        return tableView.dequeueReusableCellWithIdentifier(TableCells.Topping, forIndexPath: indexPath)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //TODO: de state in de toppings 
    }
    
    override func prepareForNextViewController(nextViewController: UIViewController) {
        //TODO: de gemaakte keuze doorgeven aan het volgende scherm
    }
    
    @IBAction func bestellen(sender: UIBarButtonItem) {
        gaNaarBestellen()
    }
}