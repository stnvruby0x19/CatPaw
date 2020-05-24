//
//  MoreInfoBreedWebViewWiki.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 11.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class MoreInfoBreedWebViewWiki: UIViewController, Customable {
    typealias RootView = MoreInfoWebView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = RootView()
   
    }
}


