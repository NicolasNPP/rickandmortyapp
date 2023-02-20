//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Nicolas Pepe on 20/02/2023.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
