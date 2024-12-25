//
//  RecipesViewModel.swift
//  resipebook
//
//  Created by iMac-9 on 17/12/24.
//
import Foundation
class RecipesViewModel: ObservableObject{
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
