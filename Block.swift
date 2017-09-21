//
//  Block.swift
//  4Tetris
//
//  Created by Dan Korkelia on 21/09/2017.
//  Copyright © 2017 Dan Korkelia. All rights reserved.
//

import SpriteKit

// #1
let NumberOfColors: UInt32 = 6

// #2
enum BlockColor: Int, CustomStringConvertible {
  
    // #3
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    // #4
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
        
    }
    // #5
    var description: String {
        return self.spriteName
    }
    
    // #6
    static func random() -> BlockColor {
        return BlockColor(rawValue:Int(arc4random_uniform(NumberOfColors)))!
    }
}




