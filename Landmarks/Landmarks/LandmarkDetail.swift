//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView { // Changed to scroll view for interactivity
            
            MapView(coordinate: landmark.locationCoordinate) // pulls in our mapview from our previous page
                .frame(height: 300) // sets the area of the map
            
            CircleImage(image: landmark.image) // adding circle image view page in as well
                .offset(y: -130)
                .padding(.bottom, -130) // formatting moves the image for effect and readability
            
            VStack(alignment: .leading) { // Vertical stack to keep items in lnline top to bottom
                
                HStack {
                    
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack { // Hstack is for our horizontal stacked or aligned text
                    
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                    
                }
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
                
                Divider() // Inserts soft line divider for cleanliness

                Text("About \(landmark.name)")
                        .font(.title2)
                Text(landmark.description)
            }
            .padding() // keeps proper spacing from edges
            Spacer() // Pushing our content up to the top of the screen
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
