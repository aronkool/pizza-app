//
//  Topping.swift
//  swiftpizza
//
//  Created by Aron Kool on 01-05-16.
//  Copyright © 2016 Topicus. All rights reserved.
//

import Foundation

struct Topping {
    let id : Int
    let naam : String
    
    init(id : Int, naam : String){
        self.id = id
        self.naam = naam
    }
}