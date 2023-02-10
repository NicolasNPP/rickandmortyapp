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
    
    /// Send call to API
    /// -Parameters
    ///     -request: request instance
    ///     -completion: Callback with error or data
    public func execute(_request : RMRequest, completion: @escaping () -> Void) {
        
    }
}
