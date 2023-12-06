//
//  EpisodeListingViewViewModel.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 15/11/23.
//

import Foundation

final class EpisodeListingViewViewModel: ObservableObject {
    private let service = APIEpisodeService()
    
    @Published var listing: [Episode] = []
    
    public func fetchListing() {
        service.getEpisode { [weak self] result in
            switch result {
            case .success(let models): DispatchQueue.main.async {
                self?.listing = models
            }
            case .failure: break
            }
        }
    }
}
