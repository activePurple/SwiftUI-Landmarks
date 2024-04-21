//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI

struct FavoriteButton: View {
    // Used to indicate buttons curren state
    @Binding var isSet: Bool
    
    
    var body: some View {
        Button {
                   isSet.toggle()
               } label: {
                   Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                       .labelStyle(.iconOnly)
                       .foregroundStyle(isSet ? .yellow : .gray)
               }
        // The interactive button
    }
}


#Preview {
    FavoriteButton(isSet: .constant(true))
}
