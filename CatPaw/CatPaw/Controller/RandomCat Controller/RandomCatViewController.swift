//
//  RandomCatController.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 23.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class RandomCatController: UIViewController, Customable {
    typealias RootView = RandomCatView
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view().cornerRadius()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CatPaw TV"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "catPaws"), style: .done, target: self, action: #selector(goToBack))
        navigationItem.leftBarButtonItem?.tintColor = .black
        view = RootView()
        fetchCatsImageData()
        view().newCatButton.addTarget(self, action: #selector(getNewCatImage), for: .touchDown)
    }
    
 
    @objc func getNewCatImage() {
        view().activityIndecator.startAnimating()
        fetchCatsImageData()
    }
    
    @objc func goToBack() {
        navigationController?.popViewController(animated: true)
    }
}
