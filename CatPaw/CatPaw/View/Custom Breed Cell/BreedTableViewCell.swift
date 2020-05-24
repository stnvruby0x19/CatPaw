//
//  BreedTableViewCell.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 05.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

class BreedTableViewCell: UITableViewCell {
    
    let gradientLayer = CAGradientLayer()
    let breedsTableController = BreedsTableViewController()
    
    //Constant Value for layout
    var sizeFrame: CGFloat = 0
    var sizeFrameMinScale: CGFloat = 0
    var sizeFrameMaxScale: CGFloat = 0
    
    // MARK: First Part Cell
    
    let contentCardBreed: UIView = {
        let contentCardBreed = UIView()
        contentCardBreed.backgroundColor = .white
        contentCardBreed.layer.shadowColor = UIColor.black.cgColor
        contentCardBreed.translatesAutoresizingMaskIntoConstraints = false
        return contentCardBreed
    }()
    
    let backgroundViewBreedCard: UIImageView = {
        let backgroundViewBreedCard = UIImageView()
        backgroundViewBreedCard.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        backgroundViewBreedCard.translatesAutoresizingMaskIntoConstraints = false
        return backgroundViewBreedCard
    }()
    
    let imageViewBreed: UIImageView = {
        let imageViewBreed = UIImageView()
        imageViewBreed.image = UIImage(named: "Abyssianin")
        imageViewBreed.contentMode = .scaleToFill
        imageViewBreed.translatesAutoresizingMaskIntoConstraints = false
        return imageViewBreed
    }()
    
    let nameBreedLabel: UILabel = {
        let nameBreedLabel = UILabel()
        nameBreedLabel.text = "Abyssinian"
        nameBreedLabel.adjustsFontSizeToFitWidth = true
        nameBreedLabel.textAlignment = .left
        nameBreedLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        nameBreedLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameBreedLabel
    }()
    
    let originBreedLabel: UILabel = {
        let originBreedLabel = UILabel()
        originBreedLabel.text = "Origin:"
        originBreedLabel.textAlignment = .left
        originBreedLabel.textColor = .lightGray
        // originCatLabel.backgroundColor = .green
        originBreedLabel.translatesAutoresizingMaskIntoConstraints = false
        return originBreedLabel
    }()
    
    let originBreedDataLabel: UILabel = {
        let originBreedDataLabel = UILabel()
        originBreedDataLabel.text = "Egypt"
        originBreedDataLabel.adjustsFontSizeToFitWidth = true
        originBreedDataLabel.textAlignment = .right
        originBreedDataLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        // originCatDataLabel.backgroundColor = .green
        originBreedDataLabel.translatesAutoresizingMaskIntoConstraints = false
        return originBreedDataLabel
    }()
    
    let lifeExpBreedLabel: UILabel = {
        let lifeExpBreedLabel = UILabel()
        lifeExpBreedLabel.text = "Average Lifespan:"
        lifeExpBreedLabel.textAlignment = .left
        lifeExpBreedLabel.textColor = .lightGray
        // lifeExpCatLabel.backgroundColor = .green
        lifeExpBreedLabel.translatesAutoresizingMaskIntoConstraints = false
        return lifeExpBreedLabel
    }()
    
    let lifeExpBreedDataLabel: UILabel = {
        let lifeExpBreedDataLabel = UILabel()
        lifeExpBreedDataLabel.text = "Egypt"
        lifeExpBreedDataLabel.adjustsFontSizeToFitWidth = true
        lifeExpBreedDataLabel.textAlignment = .right
        lifeExpBreedDataLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        // lifeExpCatDataLabel.backgroundColor = .green
        lifeExpBreedDataLabel.translatesAutoresizingMaskIntoConstraints = false
        return lifeExpBreedDataLabel
    }()
    
    // MARK: Second Part Cell
    
    let circleBreedRatingView: GeometricProgressView = {
        let circleBreedRatingView =  GeometricProgressView()
        circleBreedRatingView.progressAnimation(value: 0.9)
        circleBreedRatingView.translatesAutoresizingMaskIntoConstraints = false
        return circleBreedRatingView
    }()
    
    let ratingBreedLabel: UILabel = {
        let ratingBreedLabel = UILabel()
        ratingBreedLabel.text = "Breed rating:"
        ratingBreedLabel.textColor = .lightGray
        //ratingCatLabel.backgroundColor = .green
        ratingBreedLabel.translatesAutoresizingMaskIntoConstraints = false
        return ratingBreedLabel
    }()
    
    let ratingBreedDataLabel: UILabel = {
        let ratingBreedDataLabel = UILabel()
        ratingBreedDataLabel.text = "3.4"
        ratingBreedDataLabel.textColor = #colorLiteral(red: 0.2513970525, green: 0.2688912386, blue: 0.2992317721, alpha: 1)
        // ratingCatDataLabel.backgroundColor = .green
        ratingBreedDataLabel.translatesAutoresizingMaskIntoConstraints = false
        return ratingBreedDataLabel
    }()
    
    
    // MARK: Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Value for layout
        sizeFrame = breedsTableController.tableView.frame.height / 45
        sizeFrameMinScale = breedsTableController.tableView.frame.height / 65 * 1.1
        sizeFrameMaxScale = breedsTableController.tableView.frame.height / 40 * 1
        
        // Breed rating circle
        circleBreedRatingView.createCircularPath(lineWidth: sizeFrameMinScale / 2, lineWidthProgress: sizeFrameMinScale / 2, radius: sizeFrame * 1.3)
      
        custumizationCellView()
        updateFontsAndSizeText()
        updateBreedsViewCell()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Functions

extension BreedTableViewCell {
    private func custumizationCellView() {
        contentCardBreed.shadow()
        
        backgroundViewBreedCard.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
    }
    
    private func updateFontsAndSizeText() {
        //Fonts & Size for label
        nameBreedLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMaxScale)
        
        originBreedLabel.font = UIFont(name: "Livvic-Medium", size: sizeFrameMinScale)
        originBreedDataLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale)
        
        lifeExpBreedLabel.font = UIFont(name: "Livvic-Medium", size: sizeFrameMinScale)
        lifeExpBreedDataLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale)
        
        ratingBreedLabel.font = UIFont(name: "Livvic-Medium", size: sizeFrameMinScale)
        ratingBreedDataLabel.font = UIFont(name: "Livvic-SemiBold", size: sizeFrameMinScale)
    }
    
}
