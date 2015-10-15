//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Melissa on 10/15/15.
//  Copyright © 2015 Melissa Donovan Kate. All rights reserved.
//

import Foundation

class CategoryList {
    var categories = [MealCategory]()
    
}

class MealCategory {
    var name = String()
    var recipes = [Recipe]()
    
    init(name: String) {
        self.name = name
    }
}


class Recipe {
    var name = String()
    var ingredient = [String]()
    var instructions = String()
    
    init(name: String) {
        self.name = name
    }
}
