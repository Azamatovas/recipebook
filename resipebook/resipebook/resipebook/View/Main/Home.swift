//
//  HomeView.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import SwiftUI

struct Home: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    @State private var searchText: String = "" // Для хранения текста поиска
    
    var filteredRecipes: [Recipe] {
        if searchText.isEmpty {
            return recipesVM.recipes
        } else {
            return recipesVM.recipes.filter {
                $0.name.lowercased().contains(searchText.lowercased()) ||
                $0.ingredients.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // Добавляем поиск
                SearchBar(text: $searchText)
                
                ScrollView {
                    RecipeList(recipes: filteredRecipes)
                }
                .navigationTitle("My Recipes")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(RecipesViewModel())
    }
}

// SearchBar для ввода текста
struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                        Spacer()
                    }
                )
                .padding(.horizontal)
        }
        .frame(height: 44)
    }
}
