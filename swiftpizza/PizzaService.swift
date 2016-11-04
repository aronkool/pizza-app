//
//  PizzaService.swift
//  swiftpizza
//
//  Created by Aron Kool on 01-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

let PizzaService = MockPizzaServiceInstance()

class PizzaServiceInstance{
    
    func getPizzas(_ onSucces : ([Pizza]) -> Void){
        
    }
    
    func bestelPizza(_ pizza : Pizza, onCompletion : () -> Void){
        
    }
    
    func getToppings(_ onSucces : ([Topping]) -> Void){
        
    }
}
