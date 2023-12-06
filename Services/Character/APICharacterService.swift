//
//  APICharacter.swift
//  RickAndMorty
//
//  Created by Felix Martinez Casadiego on 4/11/23.
//

import Foundation

final class APICharacterService {
    init() {}
    
    struct Constants {
        static let apiUrl = URL(string: "https://rickandmortyapi.com/api/character")
    }
    
    public func getCharacters(completion: @escaping (Result<[Character], Error>) -> Void) {
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
                let response = try JSONDecoder().decode(CharacterListingResponse.self, from: data)
                completion(.success(response.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
