//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI


struct LandmarkList: View {
    @State private var showFavoritesOnly = false // adds the state method in so we can update this variable
    
    var filteredLandmarks: [Landmark] { // Filtered View for favorites
            landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        
        NavigationSplitView {
           
            // By conforming to Identifiable protocol we can call the landmark element
            List(filteredLandmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                    
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
