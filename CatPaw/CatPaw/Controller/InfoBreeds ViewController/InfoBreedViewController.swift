//
//  InfoBreedViewController.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 08.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class InfoBreedViewController: UIViewController, Customable {
    typealias RootView = InfoBreedView
    
    override func viewDidLayoutSubviews() {
        view().addCornerRadius()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
   
        title = "Learn More"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "catPaws"), style: .done, target: self, action: #selector(goToBack))
        navigationItem.leftBarButtonItem?.tintColor = .black
        view = RootView()
    }
   
    @objc func goToBack() {
        navigationController?.popViewController(animated: true)
    }
}
