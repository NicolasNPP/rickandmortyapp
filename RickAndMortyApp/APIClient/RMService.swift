//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Nicolas Pepe on 10/02/2023.
//

import Foundation

/// API Service object to get Rick and Morty data
final class RMService {
    /// Singleton instance
    static let shared = RMService()
    /// Private constructor
    private init () {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedGetData
    }
    
    /// Send call to API
    /// -Parameters
    ///     -request: request instance
    ///     -completion: Callback with error or data
    public func execute<T: Codable>(
        request : RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void) {
            guard let urlRequest = self.request(from: request) else {
                completion(.failure(RMServiceError.failedToCreateRequest))
                return
            }
            
            let task = URLSession.shared.dataTask(with: urlRequest) {data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(error ?? RMServiceError.failedGetData))
                    return
                }
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data)
                    print(String(describing: json))
                } catch {
                    completion(.failure(error))
                }
            }
                task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
