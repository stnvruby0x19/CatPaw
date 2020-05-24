//
//  UpdateInfoBreedView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 20.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension InfoBreedView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let sizeFrame = frame.height / 45
        let sizeFrameMinScale = frame.height / 65 * 1.1
        let sizeFrameMaxScale = frame.height / 40 * 1
        let lineWidth: CGFloat = sizeFrameMinScale / 1.8
        
        //Breed Rating Label Font
        ratingBreedDataLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale)
        overallRatingLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMaxScale)
        nameBreedLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMaxScale / 1.8)
        
        
        //MARK: Fonts Label Capsuls
        adaptabilityCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        affectionCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        lovelyChildCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        
        lovelyDogCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        energyCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        groomingChildCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        
        healthDogCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        intelligenceCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        sheddingCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        
        socialNeedsCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        lovelyStrangerCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        vocalisationCapsuleLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale / 1.75)
        
        //Breed Description Font
        breedDescriptionLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMaxScale / 1.8)
        
        //Create Rating Progress View
        circleBreedRatingView.createCircularPath(lineWidth: sizeFrameMinScale / 2, lineWidthProgress: sizeFrameMinScale / 2, radius: sizeFrame * 1.3)
        linearBreedRatingView.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 5)
        
        adaptabilityCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        affectionCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        lovelyChildCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        
        lovelyDogCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        energyCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        groomingCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        
        healthCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        intelligenceCapsule.createLinearPath(lineWidth: lineWidth,from: frame.width - frame.width,to: frame.width / 1.62)
        sheddingCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        
        socialNeedsCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        lovelyStrangerCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        vocalisationCapsule.createLinearPath(lineWidth: lineWidth, from: frame.width - frame.width,to: frame.width / 1.62)
        
        
        NSLayoutConstraint.activate([
            //TopAnchor CardViews
            breedPerfomanceCardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: sizeFrame * 2),
            breedDescriptionCardView.topAnchor.constraint(equalTo: breedPerfomanceCardView.bottomAnchor, constant: sizeFrame * 2),
            breedLinksCardView.topAnchor.constraint(equalTo: breedDescriptionCardView.bottomAnchor, constant: sizeFrame * 2),
            
            //Perfomance Content
            //Perfomace Capsuls
            circleBreedRatingView.topAnchor.constraint(equalTo: breedPerfomanceCardView.topAnchor, constant: sizeFrame * 2.2),
            circleBreedRatingView.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame * 2.2),
            
            linearBreedRatingView.topAnchor.constraint(equalTo: circleBreedRatingView.topAnchor, constant: sizeFrame),
            linearBreedRatingView.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 7.15),
            
            overallRatingLabel.topAnchor.constraint(equalTo: circleBreedRatingView.topAnchor, constant: -sizeFrame * 1.5 ),
            overallRatingLabel.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 9.5),
            
            nameBreedLabel.topAnchor.constraint(equalTo: overallRatingLabel.topAnchor, constant: lineWidth * 3),
            nameBreedLabel.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 9.0),
            
            adaptabilityCapsule.topAnchor.constraint(equalTo: circleBreedRatingView.topAnchor, constant: sizeFrame * 2.5),
            adaptabilityCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            affectionCapsule.topAnchor.constraint(equalTo: adaptabilityCapsule.bottomAnchor, constant: lineWidth * 2),
            affectionCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            lovelyChildCapsule.topAnchor.constraint(equalTo: affectionCapsule.bottomAnchor, constant: lineWidth * 2),
            lovelyChildCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            lovelyDogCapsule.topAnchor.constraint(equalTo: lovelyChildCapsule.bottomAnchor, constant: lineWidth * 2),
            lovelyDogCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            energyCapsule.topAnchor.constraint(equalTo: lovelyDogCapsule.bottomAnchor, constant: lineWidth * 2),
            energyCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            groomingCapsule.topAnchor.constraint(equalTo: energyCapsule.bottomAnchor, constant: lineWidth * 2),
            groomingCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            healthCapsule.topAnchor.constraint(equalTo: groomingCapsule.bottomAnchor, constant: lineWidth * 2),
            healthCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            intelligenceCapsule.topAnchor.constraint(equalTo: healthCapsule.bottomAnchor, constant: lineWidth * 2),
            intelligenceCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            sheddingCapsule.topAnchor.constraint(equalTo: intelligenceCapsule.bottomAnchor, constant: lineWidth * 2),
            sheddingCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            socialNeedsCapsule.topAnchor.constraint(equalTo: sheddingCapsule.bottomAnchor, constant: lineWidth * 2),
            socialNeedsCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            lovelyStrangerCapsule.topAnchor.constraint(equalTo: socialNeedsCapsule.bottomAnchor, constant: lineWidth * 2),
            lovelyStrangerCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            vocalisationCapsule.topAnchor.constraint(equalTo: lovelyStrangerCapsule.bottomAnchor, constant: lineWidth * 2),
            vocalisationCapsule.leadingAnchor.constraint(equalTo: circleBreedRatingView.trailingAnchor, constant: frame.width  / 4.5),
            
            //Label Capsuls
            adaptabilityCapsuleLabel.topAnchor.constraint(equalTo: adaptabilityCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            adaptabilityCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            affectionCapsuleLabel.topAnchor.constraint(equalTo: affectionCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            affectionCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            lovelyChildCapsuleLabel.topAnchor.constraint(equalTo: lovelyChildCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            lovelyChildCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            lovelyDogCapsuleLabel.topAnchor.constraint(equalTo: lovelyDogCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            lovelyDogCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            energyCapsuleLabel.topAnchor.constraint(equalTo: energyCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            energyCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            groomingChildCapsuleLabel.topAnchor.constraint(equalTo: groomingCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            groomingChildCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            healthDogCapsuleLabel.topAnchor.constraint(equalTo: healthCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            healthDogCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            intelligenceCapsuleLabel.topAnchor.constraint(equalTo: intelligenceCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            intelligenceCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            sheddingCapsuleLabel.topAnchor.constraint(equalTo: sheddingCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            sheddingCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            socialNeedsCapsuleLabel.topAnchor.constraint(equalTo: socialNeedsCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            socialNeedsCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            lovelyStrangerCapsuleLabel.topAnchor.constraint(equalTo: lovelyStrangerCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            lovelyStrangerCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            vocalisationCapsuleLabel.topAnchor.constraint(equalTo: vocalisationCapsule.centerYAnchor, constant: -lineWidth / 1.3),
            vocalisationCapsuleLabel.leadingAnchor.constraint(equalTo: breedPerfomanceCardView.leadingAnchor, constant: sizeFrame / 1.1),
            
            // Description Content
            breedDescriptionLabel.topAnchor.constraint(equalTo: breedDescriptionCardView.topAnchor, constant: sizeFrame / 1.5),
            breedDescriptionLabel.leadingAnchor.constraint(equalTo: breedDescriptionCardView.leadingAnchor, constant: frame.width  / 25),
            breedDescriptionLabel.trailingAnchor.constraint(equalTo: breedDescriptionCardView.trailingAnchor, constant: -frame.width  / 25),
            breedDescriptionLabel.bottomAnchor.constraint(equalTo: breedDescriptionCardView.bottomAnchor, constant: -sizeFrame / 1.5),
            
            //Links
            breedLinkWikiButton.topAnchor.constraint(equalTo: breedLinksCardView.topAnchor, constant: sizeFrame / 1.5),
            breedLinkWikiButton.leadingAnchor.constraint(equalTo: breedLinksCardView.leadingAnchor, constant: frame.width  / 25),
            breedLinkWikiButton.widthAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            breedLinkWikiButton.heightAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            
            breedLinkWikiImage.centerXAnchor.constraint(equalTo: breedLinkWikiButton.centerXAnchor),
            breedLinkWikiImage.centerYAnchor.constraint(equalTo: breedLinkWikiButton.centerYAnchor),
            breedLinkWikiImage.widthAnchor.constraint(equalTo: breedLinkWikiButton.heightAnchor, multiplier: 0.8/1),
            breedLinkWikiImage.heightAnchor.constraint(equalTo: breedLinkWikiButton.heightAnchor, multiplier: 0.8/1),
            
            breedLinkVcahoButton.topAnchor.constraint(equalTo: breedLinksCardView.topAnchor, constant: sizeFrame / 1.5),
            breedLinkVcahoButton.leadingAnchor.constraint(equalTo: breedLinkWikiButton.trailingAnchor, constant: frame.width  / 14.5),
            breedLinkVcahoButton.widthAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            breedLinkVcahoButton.heightAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            
            breedLinkVcahoImage.centerXAnchor.constraint(equalTo: breedLinkVcahoButton.centerXAnchor),
            breedLinkVcahoImage.centerYAnchor.constraint(equalTo: breedLinkVcahoButton.centerYAnchor),
            breedLinkVcahoImage.widthAnchor.constraint(equalTo: breedLinkVcahoButton.heightAnchor, multiplier: 0.8/1),
            breedLinkVcahoImage.heightAnchor.constraint(equalTo: breedLinkVcahoButton.heightAnchor, multiplier: 0.8/1),
            
            breedLinkVetButton.topAnchor.constraint(equalTo: breedLinksCardView.topAnchor, constant: sizeFrame / 1.5),
            breedLinkVetButton.trailingAnchor.constraint(equalTo: breedLinkCfaButton.leadingAnchor, constant: -frame.width  / 14.5),
            breedLinkVetButton.widthAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            breedLinkVetButton.heightAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            
            breedLinkVetImage.centerXAnchor.constraint(equalTo: breedLinkVetButton.centerXAnchor),
            breedLinkVetImage.centerYAnchor.constraint(equalTo: breedLinkVetButton.centerYAnchor),
            breedLinkVetImage.widthAnchor.constraint(equalTo: breedLinkVetButton.heightAnchor, multiplier: 0.8/1),
            breedLinkVetImage.heightAnchor.constraint(equalTo: breedLinkVetButton.heightAnchor, multiplier: 0.8/1),
            
            breedLinkCfaButton.topAnchor.constraint(equalTo: breedLinksCardView.topAnchor, constant: sizeFrame / 1.5),
            breedLinkCfaButton.trailingAnchor.constraint(equalTo: breedLinksCardView.trailingAnchor, constant: -frame.width  / 25),
            breedLinkCfaButton.widthAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            breedLinkCfaButton.heightAnchor.constraint(equalTo: breedLinksCardView.heightAnchor, multiplier: 0.7/1),
            
            breedLinkCfaImage.centerXAnchor.constraint(equalTo: breedLinkCfaButton.centerXAnchor),
            breedLinkCfaImage.centerYAnchor.constraint(equalTo: breedLinkCfaButton.centerYAnchor),
            breedLinkCfaImage.widthAnchor.constraint(equalTo: breedLinkCfaButton.heightAnchor, multiplier: 0.8/1),
            breedLinkCfaImage.heightAnchor.constraint(equalTo: breedLinkCfaButton.heightAnchor, multiplier: 0.8/1),
        ])
        
        
    }
    
    func addCornerRadius() {
        
        //Corner Radius
        breedPerfomanceCardView.layer.cornerRadius = breedPerfomanceCardView.frame.width / 20
        breedDescriptionCardView.layer.cornerRadius = breedDescriptionCardView.frame.width / 20
        breedLinksCardView.layer.cornerRadius = breedLinksCardView.frame.width / 20
        breedLinkWikiButton.layer.cornerRadius = breedLinkWikiButton.frame.width / 5
        breedLinkVcahoButton.layer.cornerRadius = breedLinkVcahoButton.frame.width / 5
        breedLinkVetButton.layer.cornerRadius = breedLinkVetButton.frame.width / 5
        breedLinkCfaButton.layer.cornerRadius = breedLinkCfaButton.frame.width / 5
    }
}
