//
//  MockPizzaService.swift
//  swiftpizza
//
//  Created by Aron Kool on 01-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

class MockPizzaServiceInstance : PizzaServiceInstance{
    
    override func getPizzas(onSucces: ([Pizza]) -> Void) {
        let pizzas = [Pizza(id: 0, naam: "Margerita", ingredienten: []),
                      Pizza(id: 1, naam: "Salami", ingredienten: []),
                      Pizza(id: 2, naam: "Pescatore", ingredienten: []),
                      Pizza(id: 3, naam: "Tonno", ingredienten: []),
                      Pizza(id: 4, naam: "Kinderpizza", ingredienten: [])]
        onSucces(pizzas)
    }
    
    override func bestelPizza(pizza: Pizza, onCompletion: () -> Void) {
        print("Pizza besteld")
        onCompletion()
    }
}