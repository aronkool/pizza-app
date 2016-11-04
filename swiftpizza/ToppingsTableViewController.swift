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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: geef het aantal te tonen regels terug
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = getToppingCell(indexPath)
        //TODO: naam van de topping tonen
        //TODO: vinkje (= accessoryType) tonen
        return cell
    }
    
    fileprivate func getToppingCell(_ indexPath : IndexPath) -> UITableViewCell{
        return tableView.dequeueReusableCell(withIdentifier: TableCells.Topping, for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO: de state in de toppings 
    }
    
    override func prepareForNextViewController(_ nextViewController: UIViewController) {
        //TODO: de gemaakte keuze doorgeven aan het volgende scherm
    }
    
    @IBAction func bestellen(_ sender: UIBarButtonItem) {
        gaNaarBestellen()
    }
}
