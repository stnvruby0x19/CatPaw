//
//  BreedsTableViewController.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 05.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class BreedsTableViewController: UITableViewController{
    
    let forCellReuseIdentifier = "cell"
    var bredsAssets = ModelBreedsAssets()
    let moreInfoWiki = MoreInfoBreedWebViewWiki()
    let moreInfoVcaho = MoreInfoBreedWebViewVcaho()
    let moreInfoVet = MoreInfoBreedWebViewVet()
    let moreInfoCfa = MoreInfoBreedWebViewCfa()
    let aplication = UIApplication.shared
    
    let activityIndecator: UIActivityIndicatorView = {
        let activityIndecator = UIActivityIndicatorView(style: .large)
        activityIndecator.color = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        activityIndecator.translatesAutoresizingMaskIntoConstraints = false
        activityIndecator.startAnimating()
        return activityIndecator
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Breeds"
        tableView.separatorStyle = .none
        tableView.register(BreedTableViewCell.self, forCellReuseIdentifier: forCellReuseIdentifier)
        fetchCatsData()
        view.addSubview(activityIndecator)
        
        NSLayoutConstraint.activate([
            activityIndecator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            activityIndecator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "heart"), style: .done, target: self, action: #selector(macPawTV))
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    @objc func macPawTV() {
        let randomCatController = RandomCatController()
        navigationController?.pushViewController(randomCatController, animated: true)
    }
}
