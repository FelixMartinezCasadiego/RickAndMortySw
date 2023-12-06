//
//  CharacterListingCardView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import SwiftUI

struct CharacterListingCardView: View {
    let model: Character
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                case .failure:
                    Text("Failed to load image")
                @unknown default:
                    EmptyView()
                }
            }
             
            VStack {
                Text(model.name)
            }
        }
    }
}


