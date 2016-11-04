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
    
    fileprivate func bestelPizza(){
        //TODO: geef de bestelling door via de PizzaService
    }
    
    fileprivate func updateViews(){
        //TODO: toon de gekozen pizza met de gekozen toppings in het bestellingTextField
    }
    
    @IBAction func backToStart(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

//TODO: extensions zouden mooi zijn om de bovenstaande methodes invulling te geven
