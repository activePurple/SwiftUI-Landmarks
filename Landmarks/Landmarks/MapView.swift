//
//  MapView.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI
import MapKit // MapKit is the library to allow us the map and geo location of the examples

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region)) // The map view being generated in the View content
    }
    
    private var region: MKCoordinateRegion { // Private var for the coordiate location
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    
}


#Preview {
    MapView()
}
