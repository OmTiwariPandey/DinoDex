//
//  DinoDex.swift
//  DinoDex
//
//  Created by Om Tiwari Pandey on 09/04/25.
//

import SwiftUI

struct DinoApexPredator: Decodable, Identifiable{
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "")
    }
    
    var color: Color{
        if type == "land" {
            Color.brown
        }
        else if type == "sea" {
            Color.blue
        }
        else {
            Color.cyan
        }
    }
    
    struct MovieScene: Decodable{
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}
 
