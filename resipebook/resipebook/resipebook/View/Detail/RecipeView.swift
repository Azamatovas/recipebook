//
//  recipeView.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import SwiftUI

struct RecipeView: View {
    @EnvironmentObject var favoriteVM: FavoriteViewModel
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Время приготовления:")
                            .font(.body)
                        Spacer()
                        Text(recipe.cookingTime)
                            .font(.body)
                    }
                    HStack {
                        Text("Количество порций:")
                            .font(.body)
                        Spacer()
                        Text(recipe.portions)
                            .font(.body)
                    }
                }
                .padding(.horizontal)
                
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Ингредиенты")
                        .font(.headline)
                    Text(recipe.ingredients)
                }
                
                VStack(alignment: .leading, spacing:20){
                    Text("Инструкция")
                        .font(.headline)
                    
                    Text(recipe.directions)
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {
                                    favoriteVM.toggleFavorite(recipe: recipe)
                                }) {
                                    HStack {
                                        Image(systemName: favoriteVM.favorites.contains(where: { $0.id == recipe.id }) ? "heart.fill" : "heart")
                                            .font(.system(size: 30))
                                            .foregroundColor(.red)
                                    }
                                }
                                                .padding()
                                                .background(Color.red.opacity(0.1))
                                                .cornerRadius(10)
                                
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some  View {
        RecipeView(recipe: Recipe.all[0])
            .environmentObject(FavoriteViewModel()) 
    }
}

