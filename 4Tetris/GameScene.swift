//
//  GameScene.swift
//  4Tetris
//
//  Created by Dan Korkelia on 21/09/2017.
//  Copyright © 2017 Dan Korkelia. All rights reserved.
//

import SpriteKit
import GameplayKit

// #1
let TickLengthLevelOne = TimeInterval(600)

class GameScene: SKScene {
    
    // #2
    //CRAZY (() -> ())? which means that it's a closure which takes no parameters and returns nothing. Its question mark indicates that it's optional and may be nil.
    
    var tick:(() -> ())?
    var tickLengthMillis = TickLengthLevelOne
    var lastTick: NSDate?
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x:0, y:0)
        background.anchorPoint = CGPoint(x:0,y:1.0)
        addChild(background)
    }
    
    override func update(_ currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        // #3
        guard let lastTick = lastTick else {
            return
        }
        
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
        
        if timePassed > tickLengthMillis {
            
            self.lastTick = NSDate()
            tick?()
        }
        
    }
    
    // #4
    func startTicking() {
        lastTick = NSDate()
    }
    
    func stopTicking() {
        lastTick = nil
    }
    
    
}





