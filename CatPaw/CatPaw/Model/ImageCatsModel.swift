//
//  ImageCatsModel.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 24.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import Foundation

var catImagesData = [DataCats]()

struct DataCats: Codable {
    let url:  String
}
