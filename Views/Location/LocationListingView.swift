//
//  LocationListingView.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 12/11/23.
//

import SwiftUI

struct LocationListingView: View {
    @ObservedObject var viewModel = LocationListingViewViewModel()
    
    var body: some View {
        
        NavigationView {
            if viewModel.listing.isEmpty {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            } else {
                List(viewModel.listing) { location in
                    NavigationLink(destination: LocationDetailView(model: location), label: {
                        LocationListingCardView(model: location)
                    })
                }
                .navigationTitle("Locations")
            }
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
    
}

#Preview {
    LocationListingView()
}
