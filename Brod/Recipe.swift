//
//  Recipe.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 27/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

class Recipe{
    var title : String = ""
    var description : String = ""
    var image : UIImage!
    var actions = [Action]()
    
    init(){
        
    }
    
    init (title : String, description : String, image : String, actions : [Action]){
        self.title = title
        self.description = description
        self.image = UIImage(named: image)
        self.actions = actions
    }
    
    func totalTime() ->Int{
        var sum = self.actions.reduce(0){ $0 + $1.durationMinutes }
        return sum
    }
}


