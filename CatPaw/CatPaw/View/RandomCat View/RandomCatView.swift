//
//  RandomCatView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 23.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class RandomCatView: UIView {
    
    let catImageBackground: UIImageView = {
        let catImageBackground = UIImageView()
        catImageBackground.backgroundColor = .red
        catImageBackground.contentMode = .scaleToFill
        catImageBackground.image = UIImage(named: "backRandomCat")
        catImageBackground.translatesAutoresizingMaskIntoConstraints = false
        return catImageBackground
    }()
    
    let catImage: UIImageView = {
        let catImage = UIImageView()
        catImage.backgroundColor = .clear
        catImage.contentMode = .scaleAspectFit
        catImage.translatesAutoresizingMaskIntoConstraints = false
        return catImage
    }()
    
    let activityIndecator: UIActivityIndicatorView = {
        let activityIndecator = UIActivityIndicatorView(style: .large)
        activityIndecator.color = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        activityIndecator.startAnimating()
        activityIndecator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndecator
    }()
    
    let newCatButton: UIButton = {
        let newCatButton = UIButton(type: .roundedRect)
        newCatButton.backgroundColor = .white
        newCatButton.translatesAutoresizingMaskIntoConstraints = false
        return newCatButton
    }()
    
    let newCatImage: UIImageView = {
        let newCatImage = UIImageView()
        newCatImage.image = UIImage(named: "likeCat")
        newCatImage.translatesAutoresizingMaskIntoConstraints = false
        return newCatImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        addSubview(catImageBackground)
        catImageBackground.addSubview(catImage)
        catImageBackground.addSubview(activityIndecator)
        addSubview(newCatButton)
        newCatButton.addSubview(newCatImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
}
