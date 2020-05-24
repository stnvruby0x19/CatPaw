//
//  InfoBreedView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 08.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class InfoBreedView: UIView {
    
    //MARK: Perfomance Breed
    let breedPerfomanceCardView: UIView = {
        let breedPerfomanceCardView = UIView()
        breedPerfomanceCardView.backgroundColor = .white
        breedPerfomanceCardView.translatesAutoresizingMaskIntoConstraints = false
        return breedPerfomanceCardView
    }()
    
    let circleBreedRatingView: GeometricProgressView = {
        let circleBreedRatingView =  GeometricProgressView()
        // circleCatRatingView.progressAnimation(value: 0.9)
        circleBreedRatingView.translatesAutoresizingMaskIntoConstraints = false
        return circleBreedRatingView
    }()
    
    let linearBreedRatingView: GeometricProgressView = {
        let linearBreedRatingView =  GeometricProgressView()
        linearBreedRatingView.progressAnimation(value: 0.9)
        linearBreedRatingView.translatesAutoresizingMaskIntoConstraints = false
        return linearBreedRatingView
    }()
    
    let ratingBreedDataLabel: UILabel = {
        let ratingBreedDataLabel = UILabel()
        ratingBreedDataLabel.text = "3.4"
        ratingBreedDataLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        // ratingCatDataLabel.backgroundColor = .green
        ratingBreedDataLabel.translatesAutoresizingMaskIntoConstraints = false
        return ratingBreedDataLabel
    }()
    
    let nameBreedLabel: UILabel = {
        let nameBreedLabel = UILabel()
        nameBreedLabel.text = "Abyssinian"
        nameBreedLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        nameBreedLabel.textAlignment = .left
        //nameBreedLabel.backgroundColor = .green
        nameBreedLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameBreedLabel
    }()
    
    let overallRatingLabel: UILabel = {
        let overallRatingLabel = UILabel()
        overallRatingLabel.text = "Overall Rating"
        overallRatingLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        overallRatingLabel.textAlignment = .left
        // ratingCatDataLabel.backgroundColor = .green
        overallRatingLabel.translatesAutoresizingMaskIntoConstraints = false
        return overallRatingLabel
    }()
    
    let adaptabilityCapsule: GeometricProgressView = {
        let adaptabilityCapsule = GeometricProgressView()
        adaptabilityCapsule.gradientLayer.colors = [#colorLiteral(red: 1, green: 0.5658736825, blue: 0.7609766722, alpha: 1).cgColor,#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1).cgColor]
        adaptabilityCapsule.translatesAutoresizingMaskIntoConstraints = false
        return adaptabilityCapsule
    }()
    
    
    let affectionCapsule: GeometricProgressView = {
        let affectionCapsule =  GeometricProgressView()
        affectionCapsule.gradientLayer.colors = [#colorLiteral(red: 0.2405773699, green: 0.7062084079, blue: 1, alpha: 1).cgColor,#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1).cgColor]
        affectionCapsule.translatesAutoresizingMaskIntoConstraints = false
        return affectionCapsule
    }()
    
    let lovelyChildCapsule: GeometricProgressView = {
        let lovelyChildCapsule =  GeometricProgressView()
        lovelyChildCapsule.gradientLayer.colors = [#colorLiteral(red: 0.9116427302, green: 1, blue: 0.2196723223, alpha: 1).cgColor,#colorLiteral(red: 0.3481093049, green: 0.3835887909, blue: 0.1007099822, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        lovelyChildCapsule.translatesAutoresizingMaskIntoConstraints = false
        return lovelyChildCapsule
    }()
    
    let lovelyDogCapsule: GeometricProgressView = {
        let lovelyDogCapsule =  GeometricProgressView()
        lovelyDogCapsule.gradientLayer.colors = [#colorLiteral(red: 1, green: 0.5238739252, blue: 0.9983815551, alpha: 1).cgColor,#colorLiteral(red: 0.5, green: 0, blue: 0.7745865583, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        lovelyDogCapsule.translatesAutoresizingMaskIntoConstraints = false
        return lovelyDogCapsule
    }()
    
    let energyCapsule: GeometricProgressView = {
        let energyCapsule =  GeometricProgressView()
        energyCapsule.gradientLayer.colors = [#colorLiteral(red: 1, green: 0.3911658823, blue: 0.3843377233, alpha: 1).cgColor,#colorLiteral(red: 0.2297558784, green: 0.006192889065, blue: 0, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        energyCapsule.translatesAutoresizingMaskIntoConstraints = false
        return energyCapsule
    }()
    
    let groomingCapsule: GeometricProgressView = {
        let careCapsule =  GeometricProgressView()
        careCapsule.gradientLayer.colors = [#colorLiteral(red: 0.7683566809, green: 0.7164337039, blue: 1, alpha: 1).cgColor,#colorLiteral(red: 0.1456330121, green: 0.1360163987, blue: 0.1916786134, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        careCapsule.translatesAutoresizingMaskIntoConstraints = false
        return careCapsule
    }()
    
    let healthCapsule: GeometricProgressView = {
        let healthCapsule =  GeometricProgressView()
        healthCapsule.gradientLayer.colors = [#colorLiteral(red: 0, green: 1, blue: 0.7009738088, alpha: 1).cgColor,#colorLiteral(red: 0.0452073887, green: 0.2057720423, blue: 0.1422687173, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        healthCapsule.translatesAutoresizingMaskIntoConstraints = false
        return healthCapsule
    }()
    
    let intelligenceCapsule: GeometricProgressView = {
        let intelligenceCapsule =  GeometricProgressView()
        intelligenceCapsule.gradientLayer.colors = [#colorLiteral(red: 0.6449884176, green: 0.9998877645, blue: 1, alpha: 1).cgColor,#colorLiteral(red: 0.2568854392, green: 0.004845306277, blue: 0.5209826827, alpha: 1).cgColor]  //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        intelligenceCapsule.translatesAutoresizingMaskIntoConstraints = false
        return intelligenceCapsule
    }()
    
    let sheddingCapsule: GeometricProgressView = {
        let sheddingCapsule =  GeometricProgressView()
        sheddingCapsule.gradientLayer.colors = [#colorLiteral(red: 0.9027719498, green: 0.9401045442, blue: 1, alpha: 1).cgColor,#colorLiteral(red: 0.08071813732, green: 0.07932706922, blue: 0.08024694771, alpha: 1).cgColor]  //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        sheddingCapsule.translatesAutoresizingMaskIntoConstraints = false
        return sheddingCapsule
    }()
    
    let socialNeedsCapsule: GeometricProgressView = {
        let socialNeedsCapsule =  GeometricProgressView()
        socialNeedsCapsule.gradientLayer.colors = [#colorLiteral(red: 0.6633489728, green: 0.3119953871, blue: 1, alpha: 1).cgColor,#colorLiteral(red: 0.1318893433, green: 0.06159109622, blue: 0.2103018165, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        socialNeedsCapsule.translatesAutoresizingMaskIntoConstraints = false
        return socialNeedsCapsule
    }()
    
    let lovelyStrangerCapsule: GeometricProgressView = {
        let lovelyStrangerCapsule =  GeometricProgressView()
        lovelyStrangerCapsule.gradientLayer.colors = [#colorLiteral(red: 0.5265196562, green: 0.8716749549, blue: 0.8122943044, alpha: 1).cgColor,#colorLiteral(red: 0.07357544452, green: 0.1858335733, blue: 0.1978201866, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        lovelyStrangerCapsule.translatesAutoresizingMaskIntoConstraints = false
        return lovelyStrangerCapsule
    }()
    
    let vocalisationCapsule: GeometricProgressView = {
        let vocalisationCapsule =  GeometricProgressView()
        vocalisationCapsule.gradientLayer.colors = [#colorLiteral(red: 1, green: 0.7292411923, blue: 0.6516336799, alpha: 1).cgColor,#colorLiteral(red: 0.2565671802, green: 0.09501843899, blue: 0.02823991515, alpha: 1).cgColor] //#colorLiteral(red: 0.9616536498, green: 0.9597049356, blue: 0, alpha: 1)
        vocalisationCapsule.translatesAutoresizingMaskIntoConstraints = false
        return vocalisationCapsule
    }()
    
    //MARK: Label Capsuls
    
    let adaptabilityCapsuleLabel: UILabel = {
        let adaptabilityCapsuleLabel = UILabel()
        adaptabilityCapsuleLabel.text = "Adaptability"
        //adaptabilityCapsuleLabel.backgroundColor = .green
        adaptabilityCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return adaptabilityCapsuleLabel
    }()
    
    let affectionCapsuleLabel: UILabel = {
        let affectionCapsuleLabel = UILabel()
        affectionCapsuleLabel.text = "Affection"
        //adaptabilityCapsuleLabel.backgroundColor = .green
        affectionCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return affectionCapsuleLabel
    }()
    
    let lovelyChildCapsuleLabel: UILabel = {
        let lovelyChildCapsuleLabel = UILabel()
        lovelyChildCapsuleLabel.text = "Child Friendly"
        lovelyChildCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return lovelyChildCapsuleLabel
    }()
    
    let lovelyDogCapsuleLabel: UILabel = {
        let lovelyDogCapsuleLabel = UILabel()
        lovelyDogCapsuleLabel.text = "Dog Friendly"
        lovelyDogCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return lovelyDogCapsuleLabel
    }()
    
    let energyCapsuleLabel: UILabel = {
        let energyCapsuleLabel = UILabel()
        energyCapsuleLabel.text = "Energy"
        energyCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return energyCapsuleLabel
    }()
    
    let groomingChildCapsuleLabel: UILabel = {
        let needCareChildCapsuleLabel = UILabel()
        needCareChildCapsuleLabel.text = "Grooming"
        needCareChildCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return needCareChildCapsuleLabel
    }()
    
    let healthDogCapsuleLabel: UILabel = {
        let healthDogCapsuleLabel = UILabel()
        healthDogCapsuleLabel.text = "Immunity"
        healthDogCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return healthDogCapsuleLabel
    }()
    
    let intelligenceCapsuleLabel: UILabel = {
        let intelligenceCapsuleLabel = UILabel()
        intelligenceCapsuleLabel.text = "Intelligence"
        intelligenceCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return intelligenceCapsuleLabel
    }()
    
    let sheddingCapsuleLabel: UILabel = {
        let sheddingCapsuleLabel = UILabel()
        sheddingCapsuleLabel.text = "Shedding"
        sheddingCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return sheddingCapsuleLabel
    }()
    
    let socialNeedsCapsuleLabel: UILabel = {
        let socialNeedsCapsuleLabel = UILabel()
        socialNeedsCapsuleLabel.text = "Social Needs"
        socialNeedsCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return socialNeedsCapsuleLabel
    }()
    
    let lovelyStrangerCapsuleLabel: UILabel = {
        let lovelyStrangerCapsuleLabel = UILabel()
        lovelyStrangerCapsuleLabel.text = "Stanger Friendly"
        lovelyStrangerCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return lovelyStrangerCapsuleLabel
    }()
    
    let vocalisationCapsuleLabel: UILabel = {
        let vocalisationCapsuleLabel = UILabel()
        vocalisationCapsuleLabel.text = "Vocalisation"
        vocalisationCapsuleLabel.translatesAutoresizingMaskIntoConstraints = false
        return vocalisationCapsuleLabel
    }()
    
    //MARK: Description Breed
    let breedDescriptionCardView: UIView = {
        let breedDescriptionCardView = UIView()
        breedDescriptionCardView.backgroundColor = .white
        breedDescriptionCardView.sizeToFit()
        breedDescriptionCardView.translatesAutoresizingMaskIntoConstraints = false
        return breedDescriptionCardView
    }()
    
    let breedDescriptionLabel: UILabel = {
        let breedDescriptionLabel = UILabel()
        breedDescriptionLabel.text = "Breed Description"
        breedDescriptionLabel.numberOfLines = 0
        breedDescriptionLabel.adjustsFontSizeToFitWidth = true
        breedDescriptionLabel.sizeToFit()
        breedDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        //  breedDescriptionLabel.backgroundColor = .green
        return breedDescriptionLabel
    }()
    
    //MARK: Links Card
    
    let breedLinksCardView: UIView = {
        let breedLinksCardView = UIView()
        breedLinksCardView.backgroundColor = .white
        // breedLinksCardView.sizeToFit()
        breedLinksCardView.translatesAutoresizingMaskIntoConstraints = false
        return breedLinksCardView
    }()
    
    let breedLinkWikiButton: UIButton = {
        let breedLinkWikiButton = UIButton(type: .roundedRect)
        breedLinkWikiButton.backgroundColor = #colorLiteral(red: 0.680538013, green: 0.6748850199, blue: 0.6826417937, alpha: 1)
        breedLinkWikiButton.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkWikiButton
    }()
    
    let breedLinkWikiImage: UIImageView = {
        let breedLinkWikiImage = UIImageView()
        breedLinkWikiImage.image = UIImage(named: "wikiLogo")
        breedLinkWikiImage.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkWikiImage
    }()
    
    let breedLinkVcahoButton: UIButton = {
        let breedLinkVcahoButton = UIButton(type: .roundedRect)
        breedLinkVcahoButton.backgroundColor = #colorLiteral(red: 0.0807670438, green: 0.251009141, blue: 0.5333592536, alpha: 1)
        breedLinkVcahoButton.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkVcahoButton
    }()
    
    let breedLinkVcahoImage: UIImageView = {
        let  breedLinkVcahoImage = UIImageView()
        breedLinkVcahoImage.image = UIImage(named: "vcaLogo")
        breedLinkVcahoImage.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkVcahoImage
    }()
    
    let breedLinkVetButton: UIButton = {
        let breedLinkVetButton = UIButton(type: .roundedRect)
        breedLinkVetButton.backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.1058823529, blue: 0.07843137255, alpha: 1)
        breedLinkVetButton.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkVetButton
    }()
    
    let breedLinkVetImage: UIImageView = {
        let  breedLinkVetImage = UIImageView()
        breedLinkVetImage.image = UIImage(named: "vetLogo")
        breedLinkVetImage.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkVetImage
    }()
    
    let breedLinkCfaButton: UIButton = {
        let breedLinkCfaButton = UIButton(type: .roundedRect)
        breedLinkCfaButton.backgroundColor = #colorLiteral(red: 0.452408813, green: 0.2316934036, blue: 0.1317349514, alpha: 1)
        breedLinkCfaButton.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkCfaButton
    }()
    
    let breedLinkCfaImage: UIImageView = {
        let  breedLinkCfaImage = UIImageView()
        breedLinkCfaImage.image = UIImage(named: "cfaLogo")
        breedLinkCfaImage.translatesAutoresizingMaskIntoConstraints = false
        return breedLinkCfaImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        //Perfomance Card
        addSubview(breedPerfomanceCardView)
        breedPerfomanceCardView.addSubview(circleBreedRatingView)
        circleBreedRatingView.addSubview(ratingBreedDataLabel)
        
        breedPerfomanceCardView.addSubview(nameBreedLabel)
        breedPerfomanceCardView.addSubview(overallRatingLabel)
        breedPerfomanceCardView.addSubview(linearBreedRatingView)
        
        breedPerfomanceCardView.addSubview(adaptabilityCapsule); breedPerfomanceCardView.addSubview(adaptabilityCapsuleLabel)
        breedPerfomanceCardView.addSubview(affectionCapsule); breedPerfomanceCardView.addSubview(affectionCapsuleLabel)
        breedPerfomanceCardView.addSubview(lovelyChildCapsule); breedPerfomanceCardView.addSubview(lovelyChildCapsuleLabel)
        
        breedPerfomanceCardView.addSubview(lovelyDogCapsule); breedPerfomanceCardView.addSubview(lovelyDogCapsuleLabel)
        breedPerfomanceCardView.addSubview(energyCapsule); breedPerfomanceCardView.addSubview(energyCapsuleLabel)
        breedPerfomanceCardView.addSubview(groomingCapsule); breedPerfomanceCardView.addSubview(groomingChildCapsuleLabel)
        
        breedPerfomanceCardView.addSubview(healthCapsule); breedPerfomanceCardView.addSubview(healthDogCapsuleLabel)
        breedPerfomanceCardView.addSubview(intelligenceCapsule); breedPerfomanceCardView.addSubview(intelligenceCapsuleLabel)
        breedPerfomanceCardView.addSubview(sheddingCapsule); breedPerfomanceCardView.addSubview(sheddingCapsuleLabel)
        
        breedPerfomanceCardView.addSubview(socialNeedsCapsule); breedPerfomanceCardView.addSubview(socialNeedsCapsuleLabel)
        breedPerfomanceCardView.addSubview(lovelyStrangerCapsule); breedPerfomanceCardView.addSubview(lovelyStrangerCapsuleLabel)
        breedPerfomanceCardView.addSubview(vocalisationCapsule); breedPerfomanceCardView.addSubview(vocalisationCapsuleLabel)
        
        //Description Card
        addSubview(breedDescriptionCardView)
        breedDescriptionCardView.addSubview(breedDescriptionLabel)
        
        //Links Card
        addSubview(breedLinksCardView)
        addSubview(breedLinkWikiButton)
        breedLinkWikiButton.addSubview(breedLinkWikiImage)
        addSubview(breedLinkVcahoButton)
        breedLinkVcahoButton.addSubview(breedLinkVcahoImage)
        addSubview(breedLinkVetButton)
        breedLinkVetButton.addSubview(breedLinkVetImage)
        addSubview(breedLinkCfaButton)
        breedLinkCfaButton.addSubview(breedLinkCfaImage)
        
        //Shadow
        breedPerfomanceCardView.shadow()
        breedDescriptionCardView.shadow()
        breedLinksCardView.shadow()
        
        NSLayoutConstraint.activate([
            
            breedPerfomanceCardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            breedPerfomanceCardView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9/1),
            breedPerfomanceCardView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3),
            
            breedDescriptionCardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            breedDescriptionCardView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9/1),
            
            ratingBreedDataLabel.centerYAnchor.constraint(equalTo: circleBreedRatingView.centerYAnchor),
            ratingBreedDataLabel.centerXAnchor.constraint(equalTo: circleBreedRatingView.centerXAnchor),
            
            breedLinksCardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            breedLinksCardView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9/1),
            breedLinksCardView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3/3),
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
