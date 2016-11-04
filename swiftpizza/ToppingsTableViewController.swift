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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toppings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let topping = toppings[indexPath.row]
        let cell = getToppingCell(indexPath)
        cell.textLabel?.text = topping.naam
        cell.accessoryType = pizza?.heeftTopping(topping: topping) ?? false ? .checkmark : .none
        return cell
    }
    
    fileprivate func getToppingCell(_ indexPath : IndexPath) -> UITableViewCell{
        return tableView.dequeueReusableCell(withIdentifier: TableCells.Topping, for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let topping = toppings[indexPath.row]
        pizza?.toggle(topping: topping)
        tableView.reloadData()
    }
    
    override func prepareForNextViewController(_ nextViewController: UIViewController) {
        if let viewController = nextViewController as? BestellenViewController{
            viewController.pizza = pizza
        }
    }
    
    @IBAction func bestellen(_ sender: UIBarButtonItem) {
        gaNaarBestellen()
    }
}

extension Pizza{
    func heeftTopping(topping : Topping) -> Bool{
        return toppings.contains(where: { return $0 == topping})
    }
    
    mutating func toggle(topping : Topping){
        if heeftTopping(topping: topping){
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
