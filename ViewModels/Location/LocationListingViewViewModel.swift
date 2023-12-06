//
//  LocationListinViewViewModel.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 13/11/23.
//

import Foundation

final class LocationListingViewViewModel: ObservableObject {
    private let service = APILocationService()
    
    @Published var listing: [Location] = []
    
    public func fetchListings() {
        service.getLocation { [weak self] result in
            switch result {
            case .success(let models): DispatchQueue.main.async {
                self?.listing = models
            }
            case .failure: break
            }
        }
    }
}
