////
////  SwiftUIView.swift
////  DinoDex
////
////  Created by Om Tiwari Pandey on 10/04/25.
////
//
//import SwiftUI
//import Foundation
////
//
////creating model for decoding
//
//
//
//struct ApexPred: Decodable, Identifiable{
//    let id: Int
//    let name: String
//    let type: String
//    let latitude: Double
//    let longitude: Double
//    let movies: [String]
//    let movieScenes: [MovieScen]
//    let link: String
//    struct MovieScen: Decodable {
//        let id: Int
//        let movie: String
//        let sceneDescription: String
//    }
//    
//    
//    var image: String {
//        name.lowercased().replacingOccurrences(of: " ", with: "")
//    }
//    
//    var color: Color {
//        if type == "sea" {
//            .blue
//        }
//        else if type == "air" {
//            .teal
//        }
//        else {
//            .brown
//        }
//    }
//}
//
//
////decoding the model
//class Preds {
//    
//    var apexPreds: [ApexPred] = []
//    
//    init() {
//        decodeJSON()
//    }
//    
//    func decodeJSON() {
//        
//        if let url = Bundle.main.url(forResource: "apexpredators", withExtension: "json") {
//            do {
//                
//                let decoder = JSONDecoder()
//                let data = try Data(contentsOf: url)
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
//                apexPreds = try decoder.decode([ApexPred].self, from: data)
//                
//                
//            } catch {
//                print("\(error)")
//            }
//        }
//
//    }
//    
//    
//}
//
//
//struct SwiftUIView: View {
//    let predators = Preds()
//    
//    @State var searchText = ""
//    
//    var filteredDinos: [ApexPred] {
//        if searchText.isEmpty {
//            predators.apexPreds
//        } else {
//            predators.apexPreds.filter { predator in
//                predator.name.localizedCaseInsensitiveContains(searchText)
//            }
//        }
//        
//    }
//    
//    var body: some View {
//        NavigationStack {
//            
//                
//                
//                List(filteredDinos) {dino in
//                    
//                    NavigationLink{
//                        
//                    } label: {
//                        HStack {
//                            Image("\(dino.image)")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 100)
//                                .shadow(color: .white, radius: 1)
//                            
//                            VStack(alignment: .leading) {
//                                Text("\(dino.name)")
//                                
//                                Text(dino.type.capitalized)
//                                    .padding(.horizontal, 13)
//                                    .padding(.vertical, 5)
//                                    .background(dino.color)
//                                    .clipShape(.capsule)
//                                
//                                
//                            }
//                        }
//                        
//                    }
//                    
//                }
//                .preferredColorScheme(.dark)
//                .searchable(text: $searchText)
//                .animation(.default, value: searchText)
//                .navigationTitle(Text("Apex Preds"))
//            }
//        
//        
//    }
//}
//
//#Preview {
//    SwiftUIView()
//}
//
//
//
//
