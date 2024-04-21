//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        
        // By conforming to Identifiable protocol we can call the landmark element
        
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark) // Loading the landmark row list
        }
    }
}


#Preview {
    LandmarkList()
}
