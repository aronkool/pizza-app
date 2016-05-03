//
//  Pizza.swift
//  swiftpizza
//
//  Created by Aron Kool on 01-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

class Pizza{
    let id : Int
    let naam : String
    let toppings : [Topping]
    
    init(id : Int, naam : String, toppings : [Topping]){
        self.id = id
        self.naam = naam
        self.toppings = toppings
    }
}