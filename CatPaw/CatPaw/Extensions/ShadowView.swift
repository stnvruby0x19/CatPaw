//
//  ShadowView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 10.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension UIView{
    
     func shadow() {
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.05
        layer.shadowOffset = CGSize(width: -1, height: 4)
        layer.shadowRadius = 2
    }
}
