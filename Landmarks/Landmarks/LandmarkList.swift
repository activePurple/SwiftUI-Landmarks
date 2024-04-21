//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            // By conforming to Identifiable protocol we can call the landmark element
            List(landmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetail()
                    
                } label: {
                    
                    LandmarkRow(landmark: landmark) // Ties the row to the detail through navigation link
                }
            }
            .navigationTitle("Landmarks") // Navigation Menu needs a title
            
        } detail: {
            
            Text("Select a Landmark")
            
        }
    }
}


#Preview {
    LandmarkList()
}
