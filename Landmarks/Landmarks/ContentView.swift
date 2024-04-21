//
//  ContentView.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI

struct ContentView: View {
    // using a state variable to load and initialize our modeldata object to be used
    @State private var modelData = ModelData()
    
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
    // Must add the enviroment to the content view otherwise model view cannot read the current data
        .environment(ModelData())
}
