//
//  AddRecipe.swift
//  resipebook
//
//  Created by iMac-6 on 12/12/24.
//

import SwiftUI
 
struct AddRecipe:View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.dessert
    @State private var cookingTime: String = ""
    @State private var portions: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body : some View {
        NavigationView {
            Form{
                Section(header: Text("Название")) {
                    TextField("Название рецепта", text: $name)
                }
                Section(header: Text("Время приготовления")) {
                    TextEditor(text: $cookingTime)
                }
                Section(header: Text("Количество порций")) {
                    TextEditor(text: $portions)
                }
                Section(header: Text("Категория")) {
                    Picker("Категория", selection: $selectedCategory){
                        ForEach(Category.allCases){category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Ингредиенты")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Инструкция")) {
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            savedRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
                
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipe_Previews: PreviewProvider{
    static var previews: some View{
        AddRecipe()
    }
}
extension AddRecipe {
    private func savedRecipe(){
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished
        )
        let recipe = Recipe(name: name, image: "", portions: portions, ingredients: ingredients, directions: directions, category: selectedCategory, cookingTime: cookingTime, datePublished: datePublished)
        recipesVM.addRecipe(recipe: recipe)
    }
}

 
