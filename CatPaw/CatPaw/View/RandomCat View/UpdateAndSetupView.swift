//
//  UpdateAndSetupView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 24.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension RandomCatView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let sizeFrame = frame.height / 45
        NSLayoutConstraint.activate([
            catImageBackground.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: sizeFrame),
            catImageBackground.centerXAnchor.constraint(equalTo: centerXAnchor),
            catImageBackground.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.97/1),
            catImageBackground.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7/1),
            
            catImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: sizeFrame),
            catImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            catImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.97/1),
            catImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7/1),
            
            activityIndecator.centerYAnchor.constraint(equalTo: catImageBackground.centerYAnchor),
            activityIndecator.centerXAnchor.constraint(equalTo: catImageBackground.centerXAnchor),
            
            newCatButton.topAnchor.constraint(equalTo: catImageBackground.bottomAnchor, constant: sizeFrame * 2),
            newCatButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            newCatButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16/1),
            newCatButton.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.16/1),
            
            newCatImage.centerYAnchor.constraint(equalTo: newCatButton.centerYAnchor),
            newCatImage.centerXAnchor.constraint(equalTo: newCatButton.centerXAnchor),
            newCatImage.heightAnchor.constraint(equalTo: newCatButton.heightAnchor, multiplier: 0.85/1),
            newCatImage.widthAnchor.constraint(equalTo: newCatButton.heightAnchor, multiplier: 0.85/1),
            
        ])
        
    }
    
    func cornerRadius() {
        catImageBackground.clipsToBounds = true
        catImageBackground.layer.cornerRadius = catImageBackground.frame.width / 30
        catImage.layer.cornerRadius = catImage.frame.width / 30
        newCatButton.layer.cornerRadius = newCatButton.frame.width / 2
    }
}
