//
//  DinoDex.swift
//  DinoDex
//
//  Created by Om Tiwari Pandey on 09/04/25.
//

struct DinoApexPredator: Decodable{
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieDescription: [MovieScene]
    let link: String
    
    struct MovieScene: Decodable{
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}
 
