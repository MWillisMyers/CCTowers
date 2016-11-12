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
    var archerButton: SKSpriteNode! = nil
    var knightButton: SKSpriteNode! = nil
    var mageButton: SKSpriteNode! = nil
    var tankButton: SKSpriteNode! = nil
    
    var archer: SKNode! = nil
    var knight: SKNode! = nil
    var mage: SKNode! = nil
    var viking: SKNode! = nil
    let spawn = CGPoint(x: -1200, y: -800)
    let mySize = CGSize(width: 312, height: 272)
    var aCounter: Bool = false
    var kCounter: Bool = false
    var mCounter: Bool = false
    var vCounter: Bool = false
    
    

    override func didMove(to view: SKView) {
        
        
        
        rollingCamera = self.childNode(withName: "Camera") as! SKCameraNode
//        archerButton = SKSpriteNode(color: SKColor.red, size: CGSize(width: 150, height: 150))
        archerButton = SKSpriteNode(imageNamed: "Archer Button.png")
        archerButton.position = CGPoint(x: -589.701, y: 795);
        archerButton.size = mySize
        knightButton = SKSpriteNode(imageNamed: "Knight Button.png")
        knightButton.position = CGPoint(x: -219.893, y: 795);
        knightButton.size = mySize
        mageButton = SKSpriteNode(imageNamed: "Mage Button.png")
        mageButton.position = CGPoint(x: 175.643, y: 795);
        mageButton.size = mySize
        tankButton = SKSpriteNode(imageNamed: "Viking Button.png")
        tankButton.position = CGPoint(x: 552.401, y: 795);
        tankButton.size = mySize
        
        
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
                    if aCounter {
                        archer.removeFromParent()
                        print("ARCHER tapped!")
                        archer.position = spawn
                        self.addChild(archer)
                    } else {
                        print("ARCHER tapped!")
                        archer.position = spawn
                        self.addChild(archer)
                        aCounter = true
                    }
                    
                }
                if knightButton.contains(location) {
                    if kCounter {
                        knight.removeFromParent()
                        print("KNIGHT tapped!")
                        knight.position = spawn
                        self.addChild(knight)
                    } else {
                        print("knight tapped!")
                        knight.position = spawn
                        self.addChild(knight)
                        kCounter = true
                    }
                    
                }
                if mageButton.contains(location) {
                    if mCounter {
                        mage.removeFromParent()
                        print("MAGE tapped!")
                        mage.position = spawn
                        self.addChild(mage)
                    } else {
                        print("MAGE tapped!")
                        mage.position = spawn
                        self.addChild(mage)
                        mCounter = true
                    }
                    
                }
                if tankButton.contains(location) {
                    if vCounter {
                        viking.removeFromParent()
                        print("TANK tapped!")
                        viking.position = spawn
                        self.addChild(viking)
                    } else {
                        print("TANK tapped!")
                        viking.position = spawn
                        self.addChild(viking)
                        vCounter = true
                    }
                    
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

