//
//  ReciptTableViewController.swift
//  BrodApp
//
//  Created by Johan Halvarsson de Maar on 28/10/14.
//  Copyright (c) 2014 Johan Halvarsson de Maar. All rights reserved.
//

import UIKit

@objc
protocol RecipesListViewControllerDelegate {
    optional func toggleLeftPanel()
    optional func collapseSidePanels()
}

class RecipesListViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate, SidePanelViewControllerDelegate {

    var delegate: RecipesListViewControllerDelegate?
    
    var recipes = [Recipe]()
    var menuButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //var nib = UINib(nibName: "RecipeTableViewCell", bundle: nil)
        
        //tableView.registerNib(nib, forCellReuseIdentifier: "RecipeCell")

        menuButton.frame = CGRectMake(8, self.view.frame.height + 10 , 40, 40)
        menuButton.setBackgroundImage(UIImage(named: "menu_button"), forState: UIControlState.Normal)
        menuButton.addTarget(self, action: "menuTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.navigationController?.view.addSubview(menuButton)
        
        setupRecipeData()
        

        
        self.tableView.reloadData()
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
        return self.recipes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("RecipeCellView", forIndexPath: indexPath) as RecipeTableViewCell
        
        let recipe = self.recipes[indexPath.row]
        cell.loadItem(title: recipe.title, recipe: recipe)
        
        return cell
    }
   
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        var index = self.tableView.indexPathForSelectedRow()
        var recipeController : RecipeViewController = segue.destinationViewController as RecipeViewController
        
        
        var selectedRecipe = self.recipes[0]
        recipeController.recipe = selectedRecipe
        
        
    }

    override func scrollViewDidScroll(scrollView: UIScrollView) {
        var frame = self.menuButton.frame
        
        frame.origin.y = scrollView.contentOffset.y + self.tableView.frame.size.height - menuButton.frame.height
  
        //frame.origin.y = self.view.frame.height + 10
        
        println("contentOffset.y")
        println(scrollView.contentOffset.y)
        
        println("self.tableView.frame.size.height")
        println(self.tableView.frame.size.height)
        println("menuButton.frame.height")
        println(menuButton.frame.height)
        
        println("origin.y")
        println(frame.origin.y)
        self.menuButton.frame = frame
    }
    
    func menuTapped(sender: UIButton!){
        self.delegate?.toggleLeftPanel!()
    }
    
    
    
    //Test data replace with real data from JSON
    func setupRecipeData(){
        var fordeg = [Ingredient(name: "Surdegsgrund", amount: 50, measure: Measures.gr ),Ingredient(name: "Vatten", amount: 50, measure: Measures.gr),
            Ingredient(name: "Vetemjol", amount: 50, measure: Measures.gr)]
        
        var step1 = Mix(duration: 5, span:5, comment: nil, ingredients: fordeg);
        
        var step2 = Rest(duration: 240, span: 60, comment: nil)
        
        var deg = [Ingredient(name: "Fordeg", amount: 150, measure: Measures.gr),
            Ingredient(name: "Vatten", amount: 300, measure: Measures.gr),
            Ingredient(name: "Vetemjol special", amount: 450, measure: Measures.gr),
            Ingredient(name: "Salt", amount: 10, measure: Measures.gr)]
        
        var mixa = Mix(duration: 5, span: 5, comment: nil, ingredients: deg)
        
        var step3 = Fold(duration: 5, span: 5, comment: nil)
        
        var step4 = Rest(duration: 60, span: 90, comment: nil)
        
        var step5 = Fold(duration: 5, span: 5, comment: "Efter sista vikningen, lat vila i form")
        
        var step6 = Rest(duration: 60, span: 90, comment: nil)
        
        var bake1 = Bake(duration: 20, span: 25, comment: nil, degreesCelcius: 250)
        var bake2 = Bake(duration: 20, span: 30, comment: nil, degreesCelcius: 200)
        
        var recept = Recipe(title: "Standardbrödet", description: "Gott e de", image: "painauxnoisettes", actions: [step1, step2, mixa, step3, step4, step5, step6, bake1, bake2])
        
        var baguette = Recipe(title: "Baguette", description: "Väldigt enkel baguette som med fördel kan förberedas kvällen innan - perfekt för helgfrukosten.", image: "baguette", actions: [step1, step2, mixa, step3, step4, step5, step6, bake1, bake2])

        
        var allRecipes = [recept, baguette, recept, baguette]
        
        self.recipes = allRecipes
        
    }

    
}
