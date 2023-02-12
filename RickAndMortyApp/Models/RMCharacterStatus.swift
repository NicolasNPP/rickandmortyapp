//
//  RMCharacterStatus.swift
//  RickAndMortyApp
//
//  Created by Nicolas Pepe on 12/02/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
