//
//  Pizza.swift
//  swiftpizza
//
//  Created by Aron Kool on 06-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

//class Pizza{
//    let toppings = [Topping]()
//    var soort = PizzaSoort.Onbekend
//    let naam : String
//    
//    init(naam: String){
//        self.naam = naam
//    }
//}

//class Pizza{
//    var naam : String = ""
//    let soort : PizzaSoort = PizzaSoort.Onbekend
////    var prijs : Double
//    let toppings : [Topping] = []
//    
//    func resetNaam(){
//        naam = "Standaard Pizza"
//    }
//}

class Topping{
    let id = 0
    let naam = "naam"
    
    required init(){
        
    }
}

class ExtraTopping : Topping{
    let prijs : Double? = nil
}

protocol Bestelbaar{
    var prijs : Double {get}
    
    func bestel()
}

struct Drank{
    let naam : String
}