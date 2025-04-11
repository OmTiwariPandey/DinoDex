//
//  ContentView.swift
//  DinoDex
//
//  Created by Om Tiwari Pandey on 09/04/25.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    
    @State var searchText = ""
    @State var sortAlphabetically = false
    
    var filteredDinos: [DinoApexPredator] {
        predators.sort(isAlphabetical: sortAlphabetically)
        
        return predators.search(for: searchText)
        
    }
    
    var body: some View {
        
        NavigationStack {
            List(filteredDinos) { predator in
                
                NavigationLink {
                    
                    Image(predator.image).resizable().scaledToFit()
                } label: {
                    
                    
                    
                    HStack {
                        //Dinosaur image
                        Image(predator.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .shadow(color: .white, radius: 1)
                        VStack(alignment: .leading){
                            //Name
                            Text(predator.name)
                                .fontWeight(.bold)
                            
                            //Type
                            Text(predator.type.capitalized)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.horizontal, 13)
                                .padding(.vertical, 5)
                                .background(predator.color)
                                .cornerRadius(20)
                            //better would be
                            // .clipshape(.capsule)
                            
                            
                            
                            
                        }
                    }
                }
                
            }
            .navigationTitle(Text("DinoDex"))
            .searchable(text: $searchText)
            .autocorrectionDisabled()
            .animation(.default, value: searchText)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        withAnimation{
                            sortAlphabetically.toggle()
                            
                        }
                    } label: {
                        Image(systemName: sortAlphabetically ? "film" : "textformat")
                            .symbolEffect(.bounce, value: sortAlphabetically)
                        
                    }
                }
            }
            
        }.preferredColorScheme(.dark )
    }
    
    
    
}



#Preview {
    ContentView()
}
