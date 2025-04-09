//
//  ContentView.swift
//  DinoDex
//
//  Created by Om Tiwari Pandey on 09/04/25.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    
    var body: some View {
        List(predators.apexPredators) { predator in
            
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
            
        }.preferredColorScheme(.dark )
    }
    
    
    
}



#Preview {
    ContentView()
}
