//
//  RMGetAllCharacterResponse.swift
//  RickAndMortyApp
//
//  Created by Nicolas Pepe on 20/02/2023.
//

import Foundation

struct RMGetAllCharacterResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
        let info: Info
        let results: [RMCharacter]
}
