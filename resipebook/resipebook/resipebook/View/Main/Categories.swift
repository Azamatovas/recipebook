//
//  Categories.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import SwiftUI

struct Categories: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){
                    category in
                    NavigationLink{
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue)
                    }
                }
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some  View {
        Categories()
    }
}

