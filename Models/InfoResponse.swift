//
//  InfoResponse.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 12/11/23.
//

import Foundation

struct InfoResponse: Codable {
    let count: Int
    let pages: Int
    let next: String
    let prev: String?
}
