//
//  Ingredient.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 28/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import Foundation

class Ingredient {
    var name : String!
    var amount : Int!
    var measure : Measures!
    
    init (name : String, amount : Int, measure : Measures){
        self.name = name
        self.amount = amount
        self.measure = measure
    }
    
}

