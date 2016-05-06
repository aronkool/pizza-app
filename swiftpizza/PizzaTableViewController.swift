//
//  PizzaTableViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 03-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class PizzaTableViewController : TableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: pizza's opvragen (TIP: herlaadt na het inladen de tabel)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: het aantal regels dat getoond moet worden
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = getPizzaCell(indexPath)
        //TODO: de juiste vulling aan de cell geven (label = textLabel)
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //TODO: doorgaan naar het volgende scherm
    }
    
    override func prepareForNextViewController(nextViewController: UIViewController) {
        //TODO: de gemaakte keuze doorgeven aan het volgende scherm
    }
    
    private func getPizzaCell(indexPath : NSIndexPath) -> UITableViewCell{
        return tableView.dequeueReusableCellWithIdentifier(TableCells.Pizza, forIndexPath: indexPath)
    }
}