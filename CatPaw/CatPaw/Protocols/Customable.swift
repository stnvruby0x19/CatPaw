//
//  Customable.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 11.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

protocol Customable {
    associatedtype RootView: UIView
}

extension Customable where Self: UIViewController {
    func view() -> RootView {
        guard let customView = view as? RootView else { fatalError("Error") }
        return customView
    }
}
