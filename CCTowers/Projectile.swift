//
//  Projectile.swift
//  CCTowers
//
//  Created by Marshall Schmutz on 11/11/16.
//  Copyright © 2016 DxATC. All rights reserved.
//

import Foundation

class Projectile {
    var projSpeed: Int
    var isAlive: Bool = true
    var posX: Int
    var posY: Int
    
    init(projSpeed: Int, posX: Int, posY: Int) {
        self.projSpeed = projSpeed
        self.posX = posX
        self.posY = posY
    }
    
    func isDead() -> Bool {
        if isAlive {
            return false
        } else {
            return true
        }
    }
}
