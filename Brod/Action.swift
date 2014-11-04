//
//  Action.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 28/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

class Action {
    var durationMinutes : Int = 0
    var durationSpan : Int?
    var comment : String?
    
    init(duration : Int, span: Int?, comment : String?){
        self.durationMinutes = duration
        self.durationSpan = span
        self.comment = comment
    }
}

