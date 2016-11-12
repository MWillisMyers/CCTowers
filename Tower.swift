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

// Call all classes
let melee = Melee()
let ranged = Ranged()
let mage = Mage()
let heavy = Heavy()

class Tower {
    var towerHealth: Int
    var gold: Int
    var army: [Unit]
    
    init() {
        self.towerHealth = 1000
        self.gold = 300
        self.army = []
    }
    
    func getHealth() -> Int {
        return self.towerHealth
    }
    
    func setHealth(health: Int) {
        self.towerHealth = health
    }
    
    func goldGen(kills: Int) {
        self.gold += kills * 10
    }
    
    func addUnit(unit: UnitType) {
        switch unit {
        case .Melee:
            if self.gold >= melee.cost {
                self.army.append(melee)
                self.gold -= melee.cost
            }
        case .Ranged:
            if self.gold >= ranged.cost {
                self.army.append(ranged)
                self.gold -= ranged.cost
            }
        case .Mage:
            if self.gold >= mage.cost {
                self.army.append(mage)
                self.gold -= mage.cost
            }
        case .Heavy:
            if self.gold >= heavy.cost {
                self.army.append(heavy)
                self.gold -= heavy.cost
            }
        break
        }
    }
}
