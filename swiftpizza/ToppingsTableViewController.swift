//
//  ToppingsTableViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 03-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class ToppingsTableViewController : TableViewController{
    
    var pizza : Pizza?{
        didSet{
            self.title = pizza?.naam
        }
    }
    
    var toppings = [Topping]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PizzaService.getToppings { (toppings) in
            self.toppings = toppings
            self.tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toppings.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let topping = toppings[indexPath.row]
        let cell = getToppingCell(indexPath)
        cell.textLabel?.text = topping.naam
        cell.accessoryType = pizza?.heeftTopping(topping) ?? false ? .Checkmark : .None
        return cell
    }
    
    private func getToppingCell(indexPath : NSIndexPath) -> UITableViewCell{
        return tableView.dequeueReusableCellWithIdentifier(TableCells.Topping, forIndexPath: indexPath)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let topping = toppings[indexPath.row]
        pizza?.toggle(topping)
        tableView.reloadData()
    }
    
    override func prepareForNextViewController(nextViewController: UIViewController) {
        if let viewController = nextViewController as? BestellenViewController{
            viewController.pizza = pizza
        }
    }
    
    @IBAction func bestellen(sender: UIBarButtonItem) {
        gaNaarBestellen()
    }
}

extension Pizza{
    func heeftTopping(topping : Topping) -> Bool{
        return toppings.contains({ return $0 == topping})
    }
    
    mutating func toggle(topping : Topping){
        if heeftTopping(topping){
            toppings = toppings.filter({return $0 != topping })
        } else{
            toppings.append(topping)
        }
    }
}

func ==(lhs: Topping, rhs: Topping) -> Bool{
    return lhs.id == rhs.id
}

func !=(lhs: Topping, rhs: Topping) -> Bool{
    return lhs.id != rhs.id
}