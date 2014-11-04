//
//  Bake.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 28/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import Foundation

class Bake : Action {
    var degreesCelcius : Int = 0
    
    init(duration: Int, span : Int?, comment : String?, degreesCelcius : Int) {
        self.degreesCelcius = degreesCelcius
        super.init(duration: duration, span: span, comment : comment)
        
    }
}