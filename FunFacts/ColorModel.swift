//
//  ColorModel.swift
//  FunFacts
//
//  Created by Softpak Financial Systems on 6/28/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit

struct ColorModel {
    
    func getRandomColor() -> UIColor {
        
        var numbers: [CGFloat] = []
        
        for _ in 1...3 {
            
            let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(255)
            let double: Double = Double(randomNumber)/255

            numbers.append(CGFloat(double))
        }
        
        return UIColor(red: numbers[0], green: numbers[1], blue: numbers[2], alpha: 1)
        
    }
    
}