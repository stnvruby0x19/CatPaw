//
//  BreedsTableViewDataSource.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 07.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension BreedsTableViewController {
    // MARK: - TableView Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if allDataSomeReverseBreeds.count > 67 {
            return 67
        }
        return allDataSomeReverseBreeds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //No comments
        let totalPoints = allDataSomeReverseBreeds[indexPath.row].adaptability + allDataSomeReverseBreeds[indexPath.row].affection_level + allDataSomeReverseBreeds[indexPath.row].child_friendly +
            allDataSomeReverseBreeds[indexPath.row].dog_friendly + allDataSomeReverseBreeds[indexPath.row].energy_level + allDataSomeReverseBreeds[indexPath.row].grooming +
            allDataSomeReverseBreeds[indexPath.row].health_issues + allDataSomeReverseBreeds[indexPath.row].intelligence + allDataSomeReverseBreeds[indexPath.row].shedding_level +
            allDataSomeReverseBreeds[indexPath.row].social_needs + allDataSomeReverseBreeds[indexPath.row].stranger_friendly + allDataSomeReverseBreeds[indexPath.row].vocalisation
        
        let cell = tableView.dequeueReusableCell(withIdentifier: forCellReuseIdentifier, for: indexPath) as! BreedTableViewCell
        let spaceCharacter = allDataSomeReverseBreeds[indexPath.row].life_span.count == 6 ?  " " : ""
        
        //Text
        cell.nameBreedLabel.text = allDataSomeReverseBreeds[indexPath.row].name
        cell.originBreedDataLabel.text = allDataSomeReverseBreeds[indexPath.row].origin
        cell.lifeExpBreedDataLabel.text =  spaceCharacter + allDataSomeReverseBreeds[indexPath.row].life_span + " Years"
        cell.ratingBreedDataLabel.text = String(format: "%.2f", (Float(totalPoints) / 12))
        
        //Gradient Color & CircleProgress
        cell.gradientLayer.colors = bredsAssets.gradient[indexPath.row]
        cell.circleBreedRatingView.gradientLayer.colors = bredsAssets.gradient[indexPath.row]
        cell.circleBreedRatingView.progressAnimation(value: (Float(totalPoints) / 12) / 5)
        
        //Image
        cell.imageViewBreed.image = UIImage(named: (bredsAssets.image[indexPath.row]))
       
        // Default Settings Cell
        cell.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        cell.layer.borderColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        
        cell.selectionStyle = .none
        cell.clipsToBounds = true
        cell.contentCardBreed.layoutIfNeeded()
        
        return cell
        
    }
}
