//
//  Favorites.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import SwiftUI

struct Favorites: View {
    @EnvironmentObject var favoriteVM: FavoriteViewModel

    var body: some View {
        NavigationView {
            VStack {
                if favoriteVM.favorites.isEmpty {
                    Text("Вы еще не сохранили ни одного рецепта в избранное.")
                        .padding()
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                } else {
                    List(favoriteVM.favorites) { recipe in
                        NavigationLink(destination: RecipeView(recipe: recipe)) {
                            Text(recipe.name)
                                .padding()
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .navigationTitle("Избранное")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some  View {
        Favorites()
            .environmentObject(FavoriteViewModel())
    }
}

