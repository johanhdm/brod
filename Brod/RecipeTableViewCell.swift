	//
//  RecipeTableViewCell.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 30/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet var labelRecipeTitle : UILabel?
    @IBOutlet var backgroundImage : UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func loadItem(#title: String, recipe: Recipe) {
        
        backgroundImage?.image = recipe.image
        labelRecipeTitle?.text = title.uppercaseString
        
    
    }
    
    
}
