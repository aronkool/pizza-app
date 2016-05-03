//
//  PizzaTableViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 03-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class PizzaTableViewController : TableViewController{
    
    var pizzas = [Pizza]()
    var laatstePizza : Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PizzaService.getPizzas { (pizzas) in
            self.pizzas = pizzas
            self.tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzas.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = getPizzaCell(indexPath)
        cell.textLabel?.text = pizzas[indexPath.row].naam
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        laatstePizza = pizzas[indexPath.row]
        gaNaarToppings()
    }
    
    override func prepareForNextViewController(nextViewController: UIViewController) {
        if let toppingsViewController = nextViewController as? ToppingsTableViewController{
            toppingsViewController.pizza = laatstePizza
        }
    }
    
    private func getPizzaCell(indexPath : NSIndexPath) -> UITableViewCell{
        return tableView.dequeueReusableCellWithIdentifier(TableCells.Pizza, forIndexPath: indexPath)
    }
}