//
//  TabBar.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home()
                .tabItem{Label("Home", systemImage: "house")}
            
            Categories()
                .tabItem{Label("Categories", systemImage: "square.fill.text.grid.1x2")}
            
            NewRecipe()
                .tabItem{Label("New", systemImage: "plus")}
            
            Favorites()
                .tabItem{Label("Favorites", systemImage: "heart")}
            
            Settings()
                .tabItem{Label("Settings", systemImage: "gear")}
        }
    }
}

struct TabBar_Previews: PreviewProvider{
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
