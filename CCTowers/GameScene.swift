//
//  GameScene.swift
//  CCTowers
//
//  Created by Matthew Myers on 11/11/16.
//  Copyright © 2016 DxATC. All rights reserved.
//

import SpriteKit




class GameScene: SKScene {
    
    
    var rollingCamera = SKCameraNode()
    var archerButton = SKSpriteNode()
    var knightButton = SKSpriteNode()
    var mageButton = SKSpriteNode()
    

    override func didMove(to view: SKView) {
        
        rollingCamera = self.childNode(withName: "Camera") as! SKCameraNode
        archerButton = self.childNode(withName: "ArcherButton") as! SKSpriteNode
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            // Loop over all the touches in this event
            for touch: AnyObject in touches {
                // Get the location of the touch in this scene
                let location = touch.location(in: self)
                // Check if the location of the touch is within the button's bounds
                if archerButton.contains(location) {
                    print("tapped!")
                }
            }
        }
       
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let previousLocation = touch.previousLocation(in: self)
            let deltaX = location.x - previousLocation.x
            rollingCamera.position.x -= deltaX
        }
    }

}

