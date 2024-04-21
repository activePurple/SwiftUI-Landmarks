//
//  ModelData.swift
//  Landmarks
//
//  Created by Tyler Oneil on 4/21/24.
//

import Foundation

// ModelData is the class that will passed downwards in the hierarchy using the enviroment modifier
@Observable
class ModelData {
    // Creates the array of landmarks when initialized from the JSON file
    // SwiftUI will update the view based the state of observable variables
    var landmarks: [Landmark] = load("landmarkData.json")
}




func load<T: Decodable>(_ filename: String) -> T {
    let data: Data // If I am underststanding the docs correctly the Data structure itself reserves Byte buffers for memory in this simple init() method


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
