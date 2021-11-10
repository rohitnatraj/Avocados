//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Natraj, Rohit on 11/9/21.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
    }
}
