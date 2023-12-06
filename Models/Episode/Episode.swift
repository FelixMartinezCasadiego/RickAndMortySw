//
//  Episode.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 15/11/23.
//

import Foundation

struct Episode: Codable, Identifiable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
