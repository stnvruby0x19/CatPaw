//
//  Model.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 05.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

var allDataSomeReverseBreeds = [DataBreeds]()
var allDataBreeds = [DataBreeds]()

struct DataBreeds: Codable{
    let name: String
    let origin: String
    let life_span: String
    
    let description: String
    let temperament: String
    
    let adaptability: Int
    let affection_level: Int
    let child_friendly: Int
    let dog_friendly: Int
    let energy_level: Int
    var grooming: Int
    var health_issues: Int
    let intelligence: Int
    var shedding_level: Int
    let social_needs: Int 
    let stranger_friendly: Int
    var vocalisation: Int
    
    let cfa_url: String?
    let vetstreet_url: String?
    let vcahospitals_url: String?
    let wikipedia_url: String?
    
}

struct ModelBreedsAssets {
    let image = ["Abyssinian","Aegean","American Bobtail",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat",
                 "unknownCat","unknownCat","unknownCat"]
    
    let gradient = [[#colorLiteral(red: 0.9411764741, green: 0.6821145583, blue: 0.1584045842, alpha: 1).cgColor,#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).cgColor],[#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).cgColor,#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1).cgColor],[#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).cgColor,#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],
                    [#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor],[#colorLiteral(red: 0.5657276511, green: 0.9110876918, blue: 0.8697146773, alpha: 1).cgColor,#colorLiteral(red: 0.2290197313, green: 0.3681145906, blue: 0.3549004793, alpha: 1).cgColor]]
}
