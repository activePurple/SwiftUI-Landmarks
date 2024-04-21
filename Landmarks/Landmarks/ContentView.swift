//
//  ContentView.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) { // Vertical stack to keep items in lnline top to bottom
            
            Text("Turtle Rock")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.green)
            
            HStack { // Hstack is for our horizontal stacked or aligned text
                
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                    .fontWeight(.medium)
                Spacer()
                Text("California")
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
        }
        .padding() // padding is keeping our text items from touching the very edge of the screen
    }
}

#Preview {
    ContentView()
}
