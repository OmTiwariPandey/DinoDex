//
//  DinoApexPredators.swift
//  DinoDex
//
//  Created by Om Tiwari Pandey on 09/04/25.
//

import Foundation

class Predators {
    var apexPredators: [DinoApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData(){
        if let url = Bundle.main.url(forResource: "apexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([DinoApexPredator].self, from: data)
            } catch {
                print("Error Decoding json data \(error)")
            }
        }
    }
}
