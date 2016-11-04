//
//  MockPizzaService.swift
//  swiftpizza
//
//  Created by Aron Kool on 01-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

class MockPizzaServiceInstance : PizzaServiceInstance{
    
    fileprivate struct Toppings{
        static let Tomaat = Topping(id: 0, naam: "Tomaat")
        static let Kaas = Topping(id: 1, naam: "Kaas")
        static let Salami = Topping(id: 2, naam: "Salami")
        static let Ham = Topping(id: 3, naam: "Ham")
        static let Zalm = Topping(id: 4, naam: "Zalm")
        static let Tonijn = Topping(id: 5, naam: "Tonijn")
        static let Mossel = Topping(id: 6, naam: "Mossel")
        static let Kappertjes = Topping(id: 7, naam: "Kappertjes")
        static let Basis = [Toppings.Tomaat, Toppings.Kaas]
    }
    
    override func bestelPizza(_ pizza : Pizza, onCompletion : () -> Void){
        print("Pizza besteld")
        onCompletion()
    }
    
    override func getToppings(_ onSucces : ([Topping]) -> Void){
        let toppings = [Toppings.Tomaat,
                        Toppings.Kaas,
                        Toppings.Salami,
                        Toppings.Ham,
                        Toppings.Zalm,
                        Toppings.Tonijn,
                        Toppings.Mossel,
                        Toppings.Kappertjes
        ]
        onSucces(toppings)
    }
    
    override func getPizzas(_ onSucces: ([Pizza]) -> Void) {
        let pizzas = [Pizza(id: 0, naam: "Margerita", toppings: Toppings.Basis),
                      Pizza(id: 1, naam: "Salami", toppings: Toppings.Basis + [Toppings.Salami]),
                      Pizza(id: 2, naam: "Pescatore", toppings: Toppings.Basis + [Toppings.Zalm, Toppings.Tonijn, Toppings.Mossel, Toppings.Kappertjes]),
                      Pizza(id: 3, naam: "Tonno", toppings: Toppings.Basis + [Toppings.Tonijn]),
                      Pizza(id: 4, naam: "Kinderpizza", toppings: Toppings.Basis + [Toppings.Ham])]
          onSucces(pizzas)
    }
}
