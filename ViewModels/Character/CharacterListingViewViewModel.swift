//
//  CharacterListingViewViewModel.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import Foundation

final class CharacterListingViewViewModel: ObservableObject {
    private let service = APICharacterService()
    
    @Published var listing: [Character] = []
    
    public func fetchListings() {
        service.getCharacters { [weak self] result in
            switch result {
            case .success(let models): DispatchQueue.main.async {
                self?.listing = models
            }
            case .failure: break
            }
        }
    }
}
