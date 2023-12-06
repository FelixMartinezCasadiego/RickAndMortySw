//
//  CharacteListingView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import SwiftUI

struct CharacteListingView: View {
    @ObservedObject var viewModel = CharacterListingViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.listing.isEmpty {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            } else {
                List(viewModel.listing) { character in
                    NavigationLink(destination: CharacterDetailView(model: character), label: {
                        CharacterListingCardView(model: character)
                    })
                }
                .navigationTitle("Rick and Morty")
            }
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}

#Preview {
    CharacteListingView()
}
