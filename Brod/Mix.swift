//
//  Mix.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 28/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import Foundation

class Mix : Action{
    var ingredients : [Ingredient]
    
    init(duration: Int, span : Int?, comment : String?, ingredients: [Ingredient]) {
        self.ingredients = ingredients
        super.init(duration: duration, span: span, comment : comment)
    }
}