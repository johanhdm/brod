//
//  BakeTableViewCell.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 29/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

class BakeTableViewCell: UITableViewCell {

    @IBOutlet var backgroundImage : UIImageView!
    @IBOutlet var degreesLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    
    func loadItem(#title: String, action: Bake) {
        backgroundImage.image = UIImage(named: "baguette")
        degreesLabel.text =  String(action.degreesCelcius) + "°"
        timeLabel.text = String(action.durationMinutes) + "m"
        
    }
    
    /*override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }*/

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
