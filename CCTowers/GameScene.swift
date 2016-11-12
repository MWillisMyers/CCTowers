//
//  GameScene.swift
//  CCTowers
//
//  Created by Matthew Myers on 11/11/16.
//  Copyright © 2016 DxATC. All rights reserved.
//

import SpriteKit




class GameScene: SKScene {
    
    var rangerNode = SKSpriteNode()
    var rangerAtlas = SKTextureAtlas()
    var rangerArray = [SKTexture]()

    override func didMove(to view: SKView) {
        rangerAtlas = SKTextureAtlas(named: "ArcherWalking")
        
        //for var i in 0...rangerAtlas.textureNames.count {
    //        var Name = "Archer Girl_\(i).png"
      //      rangerArray.append(SKTexture(imageNamed: Name))
    //}
    
        //rangerNode = SKSpriteNode(imageNamed: rangerAtlas.textureNames[0])
      //  rangerNode.size = CGSize(width: 70, height: 140)
        //rangerNode.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
       // self.addChild(rangerNode)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    

}

