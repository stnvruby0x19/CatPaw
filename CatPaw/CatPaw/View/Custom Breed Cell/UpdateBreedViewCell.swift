//
//  UpdateBreedViewCell.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 07.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension BreedTableViewCell {
    func updateBreedsViewCell() {
        
        addSubview(contentCardBreed)
        contentCardBreed.addSubview(backgroundViewBreedCard)
        contentCardBreed.addSubview(imageViewBreed)
        contentCardBreed.addSubview(nameBreedLabel)
        
        contentCardBreed.addSubview(originBreedLabel)
        contentCardBreed.addSubview(originBreedDataLabel)
        
        contentCardBreed.addSubview(lifeExpBreedLabel)
        contentCardBreed.addSubview(lifeExpBreedDataLabel)
        
        contentCardBreed.addSubview(circleBreedRatingView)
        contentCardBreed.addSubview(ratingBreedLabel)
        circleBreedRatingView.addSubview(ratingBreedDataLabel)
        
        
        NSLayoutConstraint.activate([
            contentCardBreed.centerYAnchor.constraint(equalTo: centerYAnchor),
            contentCardBreed.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentCardBreed.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 3/4),
            contentCardBreed.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 2/2),
            
            backgroundViewBreedCard.centerYAnchor.constraint(equalTo: centerYAnchor),
            backgroundViewBreedCard.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundViewBreedCard.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 3.5/4),
            backgroundViewBreedCard.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.4/4),
            
            imageViewBreed.leadingAnchor.constraint(equalTo: contentCardBreed.leadingAnchor, constant: 0),
            imageViewBreed.topAnchor.constraint(equalTo: backgroundViewBreedCard.topAnchor, constant: -sizeFrame),
            imageViewBreed.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 3.5/4),
            imageViewBreed.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.75/4),
            
            nameBreedLabel.topAnchor.constraint(equalTo: contentCardBreed.topAnchor, constant: sizeFrame),
            nameBreedLabel.leadingAnchor.constraint(equalTo: imageViewBreed.trailingAnchor, constant: -sizeFrame * 0.7),
            nameBreedLabel.widthAnchor.constraint(equalTo: contentCardBreed.widthAnchor, multiplier: 2.75/5),
            
            originBreedLabel.topAnchor.constraint(equalTo: nameBreedLabel.topAnchor, constant: sizeFrame * 2),
            originBreedLabel.leadingAnchor.constraint(equalTo: imageViewBreed.trailingAnchor, constant: -sizeFrame * 0.7),
            originBreedLabel.widthAnchor.constraint(equalTo: contentCardBreed.widthAnchor, multiplier: 0.75/5),
            
            originBreedDataLabel.topAnchor.constraint(equalTo: nameBreedLabel.topAnchor, constant: sizeFrame * 2),
            originBreedDataLabel.trailingAnchor.constraint(equalTo: contentCardBreed.trailingAnchor, constant: -sizeFrame),
            originBreedDataLabel.widthAnchor.constraint(equalTo: contentCardBreed.widthAnchor, multiplier: 1.95/5),
            
            lifeExpBreedLabel.topAnchor.constraint(equalTo: originBreedLabel.topAnchor, constant: sizeFrame * 2),
            lifeExpBreedLabel.leadingAnchor.constraint(equalTo: imageViewBreed.trailingAnchor, constant: -sizeFrame * 0.7),
            lifeExpBreedLabel.widthAnchor.constraint(equalTo: contentCardBreed.widthAnchor, multiplier: 1.6/5),
            
            lifeExpBreedDataLabel.topAnchor.constraint(equalTo: originBreedDataLabel.topAnchor, constant: sizeFrame * 2),
            lifeExpBreedDataLabel.trailingAnchor.constraint(equalTo: contentCardBreed.trailingAnchor, constant: -sizeFrame),
            lifeExpBreedDataLabel.widthAnchor.constraint(equalTo: contentCardBreed.widthAnchor, multiplier:  1.1/5),
            
            circleBreedRatingView.topAnchor.constraint(equalTo: lifeExpBreedDataLabel.topAnchor, constant: sizeFrame * 3),
            circleBreedRatingView.trailingAnchor.constraint(equalTo: contentCardBreed.trailingAnchor, constant: -sizeFrame * 2.2 ),
            
            ratingBreedLabel.centerYAnchor.constraint(equalTo: ratingBreedDataLabel.centerYAnchor),
            ratingBreedLabel.leadingAnchor.constraint(equalTo: imageViewBreed.trailingAnchor, constant: -sizeFrame * 0.7),
            
            ratingBreedDataLabel.centerYAnchor.constraint(equalTo: circleBreedRatingView.centerYAnchor),
            ratingBreedDataLabel.centerXAnchor.constraint(equalTo: circleBreedRatingView.centerXAnchor),
            
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
     
        backgroundViewBreedCard.clipsToBounds = true
        // Subviews depence
        contentCardBreed.layer.cornerRadius = contentCardBreed.frame.width / 20
        backgroundViewBreedCard.layer.cornerRadius = backgroundViewBreedCard.frame.width / 6.8
        gradientLayer.frame = CGRect(x: 0, y: 0, width: backgroundViewBreedCard.frame.width, height: backgroundViewBreedCard.frame.height)
    }
    
}
