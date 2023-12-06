//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import SwiftUI

struct CharacterDetailView: View {
    let model: Character
    
    var body: some View {
        
        Text(model.name)
            .font(.title)
            .bold()
        
        AsyncImage(url: URL(string: model.image)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            case .failure:
                Text("Failed to load image")
            @unknown default:
                EmptyView()
            }
        }
        .padding()
        
        HStack {
            Image(systemName: "circlebadge.fill").foregroundColor( model.status == "Alive" ? .green : .red)
            Text("\(model.status) - \(model.species)")
            
        }
        
        Text("Last known location: \(model.location.name)")
            .padding(.top, 2)
        
        Spacer()
    }
}


