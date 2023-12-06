//
//  Location.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 12/11/23.
//

import Foundation

struct Location: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let dimesion: String?
    let residents: [String]
    let url: String
    let created: String
}
