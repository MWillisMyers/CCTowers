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
    
    init(projSpeed: Int) {
        self.projSpeed = projSpeed
    }
    
    func isDead() -> Bool {
        if isAlive {
            return false
        } else {
            return true
            // Call Tower GoldGen here
        }
    }
}
