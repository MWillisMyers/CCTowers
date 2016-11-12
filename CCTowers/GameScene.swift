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
    var archerButton: SKNode! = nil
    var knightButton: SKNode! = nil
    var mageButton: SKNode! = nil
    var tankButton: SKNode! = nil
    
    var archer: SKNode! = nil
    var knight: SKNode! = nil
    var mage: SKNode! = nil
    var viking: SKNode! = nil
    let spawn = CGPoint(x: 10, y: 30)
    

    override func didMove(to view: SKView) {
        
        
        
        rollingCamera = self.childNode(withName: "Camera") as! SKCameraNode
        archerButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 44))
        archerButton.position = CGPoint(x: self.frame.midX, y: self.frame.midY);
        knightButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 44))
        knightButton.position = CGPoint(x: self.frame.midX, y: self.frame.midY);
        mageButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 44))
        mageButton.position = CGPoint(x: self.frame.midX, y: self.frame.midY);
        tankButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 44))
        tankButton.position = CGPoint(x: self.frame.midX, y: self.frame.midY);
        
        archer = SKSpriteNode(imageNamed: "Archer Lady.png")
        knight = SKSpriteNode(imageNamed: "Knight Dude.png")
        knight.position = spawn
        mage = SKSpriteNode(imageNamed: "Mage.png")
        mage.position = spawn
        viking = SKSpriteNode(imageNamed: "Viking.png")
        viking.position = spawn
        
        
        self.addChild(archerButton)
        self.addChild(knightButton)
        self.addChild(mageButton)
        self.addChild(tankButton)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            // Loop over all the touches in this event
            for touch: AnyObject in touches {
                // Get the location of the touch in this scene
                let location = touch.location(in: self)
                // Check if the location of the touch is within the button's bounds
                if archerButton.contains(location) {
                    print("ARCHER tapped!")
                    archer.position = spawn
                    self.addChild(archer)
                }
                if knightButton.contains(location) {
                    print("KNIGHT tapped!")
                }
                if mageButton.contains(location) {
                    print("MAGE tapped!")
                }
                if tankButton.contains(location) {
                    print("TANK tapped!")
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

