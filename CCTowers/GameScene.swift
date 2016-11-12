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
    let spawn = CGPoint(x: -900, y: -800)
    

    override func didMove(to view: SKView) {
        
        
        
        rollingCamera = self.childNode(withName: "Camera") as! SKCameraNode
        archerButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 150, height: 150))
        archerButton.position = CGPoint(x: -589.701, y: 795);
        knightButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 150, height: 150))
        knightButton.position = CGPoint(x: -219.893, y: 795);
        mageButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 150, height: 150))
        mageButton.position = CGPoint(x: 175.643, y: 795);
        tankButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 150, height: 150))
        tankButton.position = CGPoint(x: 552.401, y: 795);
        
        
        rollingCamera.addChild(archerButton)
        rollingCamera.addChild(knightButton)
        rollingCamera.addChild(mageButton)
        rollingCamera.addChild(tankButton)

        archer = SKSpriteNode(imageNamed: "Archer Lady.png")
        knight = SKSpriteNode(imageNamed: "Knight Dude.png")
        mage = SKSpriteNode(imageNamed: "Mage.png")
        viking = SKSpriteNode(imageNamed: "Viking.png")
        
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
                    knight.position = spawn
                    self.addChild(knight)
                }
                if mageButton.contains(location) {
                    print("MAGE tapped!")
                    mage.position = spawn
                    self.addChild(mage)
                }
                if tankButton.contains(location) {
                    print("TANK tapped!")
                    viking.position = spawn
                    self.addChild(viking)
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

