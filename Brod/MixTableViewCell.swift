//
//  MixTableViewCell.swift
//  Brod
//
//  Created by Johan Halvarsson de Maar on 19/11/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

class MixTableViewCell: UITableViewCell {

    var step : Mix!
    
    func loadItem(#title: String, action: Mix) {
        step = action
        
        for ingredient in action.ingredients{
            println(ingredient)
        }

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
