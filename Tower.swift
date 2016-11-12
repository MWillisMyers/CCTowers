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
    var attack: Int
    var attackSpeed: Int
    var range: Int
    var isAlive: Bool
    
    var goldTimer = Timer()
    
    init() {
        self.towerHealth = 1000
        self.gold = 300
        self.army = []
        self.attack = 10
        self.attackSpeed = 15
        self.range = 3
        self.isAlive = true
    }
    
    func getHealth() -> Int {
        return self.towerHealth
    }
    
    func setHealth(health: Int) {
        self.towerHealth = health
    }
    
    func goldKills(kills: Int) {
        self.gold += kills * 10
    }
    
    func goldGen() {
        goldTimer = Timer.scheduledTimer(withTimeInterval: 15, repeats: true, block: {_ in self.gold += 15})
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
    
    func isDead() -> Bool {
        if self.isAlive {
            return false
        } else {
            return false
            self.army.removeFirst()
        }
    }
}

class EnemyTower: Tower {
    
    var timer = Timer()

    func getRandEnemy() -> UnitType {
        var randNum = arc4random_uniform(4) + 1
        var unit: UnitType = UnitType.Melee
        
        if randNum == 1 {
            unit = UnitType.Melee
        }
        if randNum == 2 {
            unit = UnitType.Ranged
        }
        if randNum == 3 {
            unit = UnitType.Mage
        }
        if randNum == 4 {
            unit = UnitType.Heavy
        }
        
        return unit
    }
    
    func spawnEnemies() {
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: Selector(self.addUnit(unit: self.getRandEnemy()) as! String), userInfo: nil, repeats: true)
    }
    
    func stopEnemies() {
        timer.invalidate()
    }
}
