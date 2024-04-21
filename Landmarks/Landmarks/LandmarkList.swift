//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI

// Enviroment allows model data to read the data of current view this is how I will be able to update
// and contain user updated states
struct LandmarkList: View {
    // Loads the model data
    @Environment(ModelData.self) var modelData
    
    // adds the state method in so we can update this variable
    @State private var showFavoritesOnly = false

    
    var filteredLandmarks: [Landmark] { // Filtered View for favorites
            modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        // By conforming to Identifiable protocol we can call the landmark element in each of our loops the element then tied through variable
        NavigationSplitView {
           
            List {
                    Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                        
                    } label: {
                        
                        LandmarkRow(landmark: landmark)
                        // Ties the row to the detail through navigation link
                    }
                } // Closing bracket foreach loop
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks") // Navigation Menu needs a title
            
        } detail: {
            
            Text("Select a Landmark")
            
        }
    }
}


#Preview {
    LandmarkList()
        .environment(ModelData())
}
