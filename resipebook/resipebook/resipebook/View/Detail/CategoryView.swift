//
//  CategoryView.swift
//  resipebook
//
//  Created by iMac-6 on 12/12/24.
//

import SwiftUI
 
struct CategoryView:View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var category: Category
    
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{$0.category.rawValue == category.rawValue }
    }
    var body : some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue)
    }
}

struct CategoryView_Previews: PreviewProvider{
    static var previews: some View{
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
