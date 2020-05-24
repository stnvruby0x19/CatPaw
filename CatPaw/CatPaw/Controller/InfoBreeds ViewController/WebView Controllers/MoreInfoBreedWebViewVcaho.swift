//
//  MoreInfoBreedWebViewVcaho.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 13.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class MoreInfoBreedWebViewVcaho: UIViewController, Customable {
    typealias RootView = MoreInfoWebView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = RootView()
   
    }
}

