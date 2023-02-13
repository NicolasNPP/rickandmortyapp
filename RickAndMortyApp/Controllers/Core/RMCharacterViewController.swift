//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Nicolas Pepe on 10/02/2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
         title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
            URLQueryItem(name: "name", value: "rick"),
            URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request: request, expecting: RMCharacter.self) { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
