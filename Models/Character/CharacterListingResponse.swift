//
//  CharacterListing.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import Foundation

struct CharacterListingResponse: Codable {
    let info: InfoResponse
    let results: [Character]
}
