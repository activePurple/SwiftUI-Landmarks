//
//  Landmark.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable { // Codable is what will Decoable useful later on for the decoding of the JSON file
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    
    private var imageName: String // Reads the image name from the data
        var image: Image { // Loads the image name from the property of the pngs
            Image(imageName) // asserts the string name to Image name
        }
    
    
    
    private var coordinates: Coordinates // Using our Nested Coordiantes property we will be able to display the coordinate data in the file
    
    var locationCoordinate: CLLocationCoordinate2D { // calculates our longitude and latitude through required use of locationCoordinate property. Allows use of MapKit
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
    

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
    
    
}
