//
//  LocationListingResponse.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 12/11/23.
//

import Foundation

struct LocationListingResponse: Codable {
    let info: InfoResponse
    let results: [Location]
}
