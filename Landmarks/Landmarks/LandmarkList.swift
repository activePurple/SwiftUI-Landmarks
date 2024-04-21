//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}


#Preview {
    LandmarkList()
}
