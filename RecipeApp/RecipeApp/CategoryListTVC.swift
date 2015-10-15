//
//  CategoryListTVC.swift
//  RecipeApp
//
//  Created by Melissa on 10/15/15.
//  Copyright © 2015 Melissa Donovan Kate. All rights reserved.
//

import UIKit

class CategoryListTVC: UITableViewController {
    
    var selectedIndex = 0
    
    // This is the big list
    var categoryList = [MealCategory]()
    
    // Instances of the Meal Categories
    var dinnerCategory = MealCategory(name: "Dinner Recipes")
    var lunchCategory = MealCategory(name: "Lunch Recipes")
    var breakfastCategory = MealCategory(name: "Breakfast Recipes")
    var dessertCategory = MealCategory(name: "Dessert Recipes")
    
    // Instances of recipes
    var pizza = Recipe(name: "Pizza")
    var pbj = Recipe(name: "PB&J")

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryList = [dinnerCategory, lunchCategory, breakfastCategory, dessertCategory]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 0
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("categoryListCell") as UITableViewCell!
        if (cell == nil) {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "categoryListCell")}
        cell.textLabel?.text = categoryList[indexPath.row].name
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRecipeListSegue" {
            let destVC = segue.destinationViewController as! RecipeListTVC
            destVC.mealCategory = categoryList[selectedIndex]
        }
    }
}
