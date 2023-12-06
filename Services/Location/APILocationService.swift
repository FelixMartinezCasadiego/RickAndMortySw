//
//  APILocationService.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 12/11/23.
//

import Foundation

final class APILocationService {
    init() {}
    
    struct Constants {
        static let apiUrl = URL(string: "https://rickandmortyapi.com/api/location")
    }
    
    public func getLocation(completion: @escaping (Result<[Location], Error>) -> Void) {
        guard let url = Constants.apiUrl else {
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data, error == nil else {
                if let error {
                    print("Error fetching data: \(error)")
                    completion(.failure(error))
                }
                return
            }
           
            do {
                let response = try JSONDecoder().decode(LocationListingResponse.self, from: data)
                completion(.success(response.results))
            } catch {
                print("Error decoding data: \(error)")
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
