//
//  Tower.swift
//  CCTowers
//
//  Created by Marshall Schmutz on 11/11/16.
//  Copyright © 2016 DxATC. All rights reserved.
//

import Foundation

//protocol Base {
//    var towerHealth: Int { get set }
//    func getHealth()
//    func setHealth()
//}

let melee = Melee()
let ranged = Ranged()
let mage = Mage()

class Tower {
    var towerHealth: Int
    var gold: Int
    var army: [Unit]
    
    init() {
        self.towerHealth = 1000
        self.gold = 300
        self.army = [mage]
    }
    
    func getHealth() -> Int {
        return self.towerHealth
    }
    
    func setHealth(health: Int) {
        self.towerHealth = health
    }
    
    func goldGen(kills: Int) {
        self.gold += kills
    }
}
