//
//  EpisodeListingView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 15/11/23.
//

import SwiftUI

struct EpisodeListingView: View {
    @ObservedObject var viewModel = EpisodeListingViewViewModel()
    
    var body: some View {
        List(viewModel.listing) { episode in
            HStack {
                Text("\(episode.name) - ")
                Text(episode.episode)
            }
        }.onAppear{
            viewModel.fetchListing()
        }
    }
}

#Preview {
    EpisodeListingView()
}
