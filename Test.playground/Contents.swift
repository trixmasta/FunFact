//: Playground - noun: a place where people can play

import UIKit
import GameKit

var str = "Hello, playground"

for _ in 1...3 {
    
    let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(255)
    let d: Double = Double(randomNumber)/255
    
}

