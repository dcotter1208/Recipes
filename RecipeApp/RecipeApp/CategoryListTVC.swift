//
//  CategoryListTVC.swift
//  RecipeApp
//
//  Created by Melissa on 10/15/15.
//  Copyright © 2015 Melissa Donovan Kate. All rights reserved.
//

import UIKit

class CategoryListTVC: UITableViewController {
    
    // This is the big list
    var categoryList = CategoryList?()
    
    // Instances of the Meal Categories
    var dinnerCategory = MealCategory?()
    var lunchCategory = MealCategory?()
    var breakfastCategory = MealCategory?()
    var dessertCategory = MealCategory?()
    
    // Instances of recipes
    var pizza = Recipe(name: "Pizza")
    var pbj = Recipe(name: "PB&J")

    override func viewDidLoad() {
        super.viewDidLoad()
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
        return 0
    }
}
