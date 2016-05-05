//
//  BestellenViewController.swift
//  swiftpizza
//
//  Created by Aron Kool on 05-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import UIKit

class BestellenViewController : UIViewController{
 
    @IBOutlet weak var bestellingTextField: UITextView!
    
    @IBOutlet weak var succesLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var pizza : Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        bestelPizza()
    }
    
    private func bestelPizza(){
        if let pizza = pizza{
            PizzaService.bestelPizza(pizza, onCompletion: {
                self.succesLabel.hidden = false
                self.nextButton.hidden = false
            })
        }
    }
    
    private func updateViews(){
        if let pizza = pizza{
            self.bestellingTextField.text = "\(pizza.naam) met \(pizza.toppings.asList)"
        } else{
            self.bestellingTextField.text = "Geen"
        }
    }
    
    @IBAction func backToStart(sender: UIButton) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}

private extension Array where Element:Topping{
    
    var asList : String{
        return map({ return $0.naam }).joinWithSeparator(", ")
    }
}