//
//  ViewController.swift
//  Brod
//
//  Created by Johan Halvarsson de Maar on 04/11/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit


class CenterViewController: UIViewController, SidePanelViewControllerDelegate {
  @IBOutlet weak private var imageView: UIImageView!
  @IBOutlet weak private var titleLabel: UILabel!
  @IBOutlet weak private var creatorLabel: UILabel!

  var delegate: RecipesListViewControllerDelegate?

  // MARK: Button actions

  @IBAction func kittiesTapped(sender: AnyObject) {
    if let d = delegate {
      d.toggleLeftPanel?()
    }
  }


  func animalSelected(animal: NSObject) {
/*    imageView.image = animal.image
    titleLabel.text = animal.title
    creatorLabel.text = animal.creator*/

    if let d = delegate {
      d.collapseSidePanels!()
    }
  }
}