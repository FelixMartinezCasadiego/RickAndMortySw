//
//  EpisodeListingResponse.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 15/11/23.
//

import Foundation

struct EpisodeListingResponse: Codable {
    let info: InfoResponse
    let results: [Episode]
}
