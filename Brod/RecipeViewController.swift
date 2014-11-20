//
//  IngredientsTableViewController.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 28/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

class RecipeViewController: UITableViewController, UITableViewDelegate  {

    var recipe : Recipe?
    
    @IBOutlet var recipeTitle : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //var nib = UINib(nibName: "BakeTableViewCell", bundle: nil)
        
        //tableView.registerNib(nib, forCellReuseIdentifier: "BakeCell")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return recipe!.actions.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        let action = self.recipe?.actions[indexPath.row] as Action!
        
        
        if (action is Bake){
            var cell : BakeTableViewCell
            
            cell = tableView.dequeueReusableCellWithIdentifier("BakeCell", forIndexPath: indexPath) as BakeTableViewCell
        
            cell.loadItem(title: "bake", action:  action as Bake)
            
            return cell

        }
        else if (action is Mix)
        {
            
            var cell : MixTableViewCell
            
            cell = tableView.dequeueReusableCellWithIdentifier("MixCell", forIndexPath: indexPath) as MixTableViewCell
            
            cell.loadItem(title: "Mix", action: action as Mix)
            
            return cell
        
        }
        else if (action is Fold){
            var cell : FoldTableViewCell
            cell = tableView.dequeueReusableCellWithIdentifier("FoldCell", forIndexPath: indexPath) as FoldTableViewCell
            
            return cell
            
        }
        else if (action is Rest){

            var cell : RestTableViewCell
            cell = tableView.dequeueReusableCellWithIdentifier("RestCell", forIndexPath: indexPath) as RestTableViewCell
            
            //cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            
            
            return cell


        }
        else{
            return UITableViewCell()
        }
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */
/*
        // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        
    }
    */

}
