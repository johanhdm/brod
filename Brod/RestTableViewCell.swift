//
//  RestTableViewCell.swift
//  Brod
//
//  Created by Johan Halvarsson de Maar on 20/11/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

class RestTableViewCell: UITableViewCell {

    var step : Rest!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadItem(#title : String, action: Rest){
        self.step = action
        
    }

}
