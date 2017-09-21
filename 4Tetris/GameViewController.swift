//
//  GameViewController.swift
//  4Tetris
//
//  Created by Dan Korkelia on 21/09/2017.
//  Copyright © 2017 Dan Korkelia. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    //In GameViewController we've added a member variable, scene. Its declaration: var scene: GameScene! lets us know that it's a variable, its name is scene, its type is GameScene and it's a non-optional value which we will assign at some point.
    
    var scene: GameScene!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configure the view
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        //Create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        // Present the scene
        skView.presentScene(scene)
        
    }




    override var prefersStatusBarHidden: Bool {
        return true
    }
}
