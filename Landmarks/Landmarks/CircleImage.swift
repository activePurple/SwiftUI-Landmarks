//
//  CircleImage.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) // creates the circle clipping around our image itself
            .overlay {
                Circle().stroke(.green, lineWidth: 4) // green line painted onto circle clip for image
                
            } .shadow(radius: 7) // adds shadow effect to our circle for depth
            // end of overlay for circle image
        
    }
}


#Preview {
    CircleImage()
}
