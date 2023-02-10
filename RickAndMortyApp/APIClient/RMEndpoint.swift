//
//  RMEndpoint.swift
//  RickAndMortyApp
//
//  Created by Nicolas Pepe on 10/02/2023.
//

import Foundation

/// Represent unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoints to get info
    case character
    case location
    case episode
}
