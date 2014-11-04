//
//  ViewController.swift
//  Brod
//
//  Created by Johan Halvarsson de Maar on 04/11/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

@objc
protocol SidePanelViewControllerDelegate {
  //func animalSelected(animal: NSObject)
}

class SidePanelViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  @IBOutlet weak var tableView: UITableView!

  var delegate: SidePanelViewControllerDelegate?
  //var animals: Array<Animal>!

  struct TableView {
    struct CellIdentifiers {
      static let MenuCell = "MenuCell"
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.reloadData()
  }

  // MARK: Table View Data Source

  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(TableView.CellIdentifiers.MenuCell, forIndexPath: indexPath) as MenuCell
    
    
    return cell
  }

  // Mark: Table View Delegate
  func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
    //let selectedAnimal = animals[indexPath.row]
    //delegate?.animalSelected(NSObject())
  }

}

class MenuCell: UITableViewCell {
//  @IBOutlet weak var animalImageView: UIImageView!
  @IBOutlet weak var menuItemLabel: UILabel!
//  @IBOutlet weak var imageCreatorLabel: UILabel!

}