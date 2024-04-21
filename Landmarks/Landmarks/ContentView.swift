//
//  ContentView.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView() // pulls in our mapview from our previous page
                .frame(height: 300) // sets the area of the map
            
            CircleImage() // adding circle image view page in as well
                .offset(y: -130)
                .padding(.bottom, -130) // formatting moves the image for effect and readability
            
            VStack(alignment: .leading) { // Vertical stack to keep items in lnline top to bottom
                
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                
                HStack { // Hstack is for our horizontal stacked or aligned text
                    
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                    
                }
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
                
                Divider() // Inserts soft line divider for cleanliness

                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
            }
            .padding() // keeps proper spacing from edges
            Spacer() // Pushing our content up to the top of the screen
        }
    }
}

#Preview {
    ContentView()
}
