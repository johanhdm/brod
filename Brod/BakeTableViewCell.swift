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
    @IBOutlet var titleLabel : UILabel!
    
    func loadItem(#title: String, image: String) {
        backgroundImage.image = UIImage(named: image)
        titleLabel.text = title
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
