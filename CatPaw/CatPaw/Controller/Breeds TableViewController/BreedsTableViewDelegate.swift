//
//  BreedsTableViewDelegate.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 07.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit
import SystemConfiguration
import Network

extension BreedsTableViewController {
    //MARK: TableView Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let totalPoints = allDataSomeReverseBreeds[indexPath.row].adaptability + allDataSomeReverseBreeds[indexPath.row].affection_level + allDataSomeReverseBreeds[indexPath.row].child_friendly +
            allDataSomeReverseBreeds[indexPath.row].dog_friendly + allDataSomeReverseBreeds[indexPath.row].energy_level + allDataSomeReverseBreeds[indexPath.row].grooming +
            allDataSomeReverseBreeds[indexPath.row].health_issues + allDataSomeReverseBreeds[indexPath.row].intelligence + allDataSomeReverseBreeds[indexPath.row].shedding_level +
            allDataSomeReverseBreeds[indexPath.row].social_needs + allDataSomeReverseBreeds[indexPath.row].stranger_friendly + allDataSomeReverseBreeds[indexPath.row].vocalisation
        
        let infoBreedViewController = InfoBreedViewController()
        let duration = 1.3
        
        infoBreedViewController.view().breedDescriptionLabel.text = allDataBreeds[indexPath.row].name + " cats are " + allDataBreeds[indexPath.row].temperament + ". " + allDataBreeds[indexPath.row].description
        
        infoBreedViewController.view().circleBreedRatingView.gradientLayer.colors = bredsAssets.gradient[indexPath.row]
        infoBreedViewController.view().circleBreedRatingView.progressAnimation(value: (Float(totalPoints) / 12) / 5)
        infoBreedViewController.view().ratingBreedDataLabel.text = String(format: "%.2f", (Float(totalPoints) / 12))
        infoBreedViewController.view().linearBreedRatingView.gradientLayer.colors = bredsAssets.gradient[indexPath.row]
        infoBreedViewController.view().linearBreedRatingView.progressAnimation(duration: duration, value: (Float(totalPoints) / 12) / 5)
        
        infoBreedViewController.view().nameBreedLabel.text = allDataSomeReverseBreeds[indexPath.row].name
        
        infoBreedViewController.view().adaptabilityCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].adaptability) / 5)
        infoBreedViewController.view().affectionCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].affection_level) / 5)
        infoBreedViewController.view().lovelyChildCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].child_friendly) / 5)
        
        infoBreedViewController.view().lovelyDogCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].dog_friendly) / 5)
        infoBreedViewController.view().energyCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].energy_level) / 5)
        infoBreedViewController.view().groomingCapsule.progressAnimation(duration: duration, value: Float(allDataBreeds[indexPath.row].grooming) / 5)
        
        infoBreedViewController.view().healthCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].health_issues) / 5)
        infoBreedViewController.view().intelligenceCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].intelligence) / 5)
        infoBreedViewController.view().sheddingCapsule.progressAnimation(duration: duration, value: Float(allDataBreeds[indexPath.row].shedding_level) / 5)
        
        infoBreedViewController.view().socialNeedsCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].social_needs) / 5)
        infoBreedViewController.view().lovelyStrangerCapsule.progressAnimation(duration: duration, value: Float(allDataSomeReverseBreeds[indexPath.row].stranger_friendly) / 5)
        infoBreedViewController.view().vocalisationCapsule.progressAnimation(duration: duration, value: Float(allDataBreeds[indexPath.row].vocalisation) / 5)
        infoBreedViewController.view().breedLinkWikiButton.layoutSubviews()
        
        navigationController?.pushViewController(infoBreedViewController, animated: true)
        
        getWebWiki(url: allDataSomeReverseBreeds[indexPath.row].wikipedia_url, button: infoBreedViewController.view().breedLinkWikiButton, ifSuccessAction: #selector(getWikipediaWeb), ifErrorAction: #selector(getWikiAlert))
        getWebVcaho(url: allDataSomeReverseBreeds[indexPath.row].vcahospitals_url, button: infoBreedViewController.view().breedLinkVcahoButton, ifSuccessAction: #selector(getVcahoWeb), ifErrorAction: #selector(getVcahoAlert))
        getWebVet(url: allDataSomeReverseBreeds[indexPath.row].vetstreet_url, button: infoBreedViewController.view().breedLinkVetButton, ifSuccessAction: #selector(getVetWeb), ifErrorAction: #selector(getVetAlert))
        getWebCfa(url: allDataSomeReverseBreeds[indexPath.row].cfa_url, button: infoBreedViewController.view().breedLinkCfaButton, ifSuccessAction: #selector(getCfaWeb), ifErrorAction: #selector(getCfaAlert))
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 3.5
        
    }
    
}
