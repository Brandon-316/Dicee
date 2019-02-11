//
//  Dice.swift
//  Dicee
//
//  Created by Brandon Mahoney on 2/10/19.
//  Copyright © 2019 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit

enum Dice: Int {
    case one = 0
    case two
    case three
    case four
    case five
    case six
    
    var image: UIImage {
        switch self {
        case .one: return #imageLiteral(resourceName: "dice1")
        case .two: return #imageLiteral(resourceName: "dice2")
        case .three: return #imageLiteral(resourceName: "dice3")
        case .four: return #imageLiteral(resourceName: "dice4")
        case .five: return #imageLiteral(resourceName: "dice5")
        case .six: return #imageLiteral(resourceName: "dice6")
        }
    }
}
