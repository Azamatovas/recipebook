//
//  resipebookApp.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//

import SwiftUI

@main
struct resipebookApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    @StateObject var favoriteViewModel = FavoriteViewModel()
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
                .environmentObject(favoriteViewModel)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

