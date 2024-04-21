//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name) // Calling the landmark name property from the first entry in the json data
            Spacer() // Spacers when applied in the Hstack work in the direction of the stack
        }
    }
}


#Preview("Turtle Rock") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    } // Grouped Preview to show multiple rows vs multiple instances
    
}

