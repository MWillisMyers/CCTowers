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

class Tower {
    var towerHealth: Int
    var gold: Int
    
    init(towerHealth: Int) {
        self.towerHealth = towerHealth
        self.gold = 0
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
