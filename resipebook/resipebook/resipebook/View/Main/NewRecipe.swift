//
//  NewResipe.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import SwiftUI

struct NewRecipe: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Добавить новый рецепт"){
                showAddRecipe = true
            }
            .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipe()
        }
    }
}

struct New_Previews: PreviewProvider {
    static var previews: some  View {
        NewRecipe()
    }
}

