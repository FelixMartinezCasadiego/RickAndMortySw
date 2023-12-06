//
//  APIEpisodeService.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 15/11/23.
//

import Foundation

final class APIEpisodeService {
    init() {}
    
    struct Constants {
        static let apiUrl = URL(string: "https://rickandmortyapi.com/api/episode")
    }
    
    public func getEpisode(completion: @escaping (Result<[Episode], Error>) -> Void) {
        guard let url = Constants.apiUrl else {
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {data, _, error in
            guard let data, error == nil else {
                if let error {
                    completion(.failure(error))
                }
                return
            }
            
            do {
                let response = try JSONDecoder().decode(EpisodeListingResponse.self, from: data)
                completion(.success(response.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
