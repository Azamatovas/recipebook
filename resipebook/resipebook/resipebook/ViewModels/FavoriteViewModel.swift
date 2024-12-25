//
//  FavoriteViewModel.swift
//  resipebook
//
//  Created by iMac-9 on 17/12/24.
//
//
import SwiftUI

class FavoriteViewModel: ObservableObject {
    @Published var favorites: [Recipe] = [] // Список избранных рецептов
    
    func toggleFavorite(recipe: Recipe) {
        if let index = favorites.firstIndex(where: { $0.id == recipe.id }) {
            favorites.remove(at: index) // Удаляем, если уже в списке
        } else {
            favorites.append(recipe) // Добавляем, если еще не в списке
        }
    }
}
