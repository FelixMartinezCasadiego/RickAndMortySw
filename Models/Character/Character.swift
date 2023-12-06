//
//  CharacterListing.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import Foundation

struct originCharacter: Codable {
    let name: String
    let url: String
}

struct locationCharacter: Codable {
    let name: String
    let url: String
}

struct Character: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: originCharacter
    let location: locationCharacter
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
