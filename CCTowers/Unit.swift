//
//  Unit.swift
//  CCTowers
//
//  Created by Marshall Schmutz on 11/11/16.
//  Copyright © 2016 DxATC. All rights reserved.
//

import Foundation

//protocol Unit {
//    var unitHealth: Int { get set }
//    var unitAttack: Int { get set }
//    var unitDefense: Int { get set }
//    var unitRange: Int { get set }
//}

class Unit {
    var unitHealth: Int
    var unitAttack: Int
    var unitRange: Int
    var unitSpeed: Int
    var isLive: Bool = true
    var cost: Int
    var posX: Int
    var posY: Int
    
    init() {
        self.unitHealth = 80
        self.unitAttack = 20
        self.unitRange = 1
        self.unitSpeed = 10
        self.cost = 100
        self.posX = 0
        self.posY = 0
    }
    
    //  All the getters
    func getHealth() -> Int {
        return self.unitHealth
    }
    
    func getAttack() -> Int {
        return self.unitAttack
    }
    
    func getRange() -> Int {
        return self.unitRange
    }
    
    func getSpeed() -> Int {
        return self.unitSpeed
    }
    
    func getPos() -> (Int, Int) {
        return (self.posX, self.posY)
    }
    
    //  All the setters
    func setHealth(health: Int) {
        self.unitHealth = health
        if self.unitHealth <= 0 {
            self.isLive = false
        }
    }
    
    func setAttach(attack: Int) {
        self.unitAttack = attack
    }
    
    func setRange(range: Int) {
        self.unitRange = range
    }
    
    func setSpeed(speed: Int) {
        self.unitSpeed = speed
    }
    
    //  Other methods
    func upgrade() {
        // When upgraded, boost stats
        self.unitHealth = getHealth() + 10
        self.unitAttack = getAttack() + 10
        self.unitRange = getRange() + 10
        self.unitSpeed = getSpeed() + 10
    }
    
    func isDead() -> Bool {
        if isLive {
            return false
        } else {
            return true
        }
    }
    
}

// Melee class
class Melee: Unit {
    
    override init() {
        super.init()
        
        self.unitHealth = 80
        self.unitAttack = 20
        self.unitRange = 1
        self.unitSpeed = 10
        self.cost = 100
    }
}

// Ranged class
class Ranged: Unit {
    
    override init() {
        super.init()
        
        self.unitHealth = 70
        self.unitAttack = 15
        self.unitRange = 2
        self.unitSpeed = 15
        self.cost = 150
    }
}

// Mage class
class Mage: Unit {
    
    override init() {
        super.init()
        
        self.unitHealth = 50
        self.unitAttack = 20
        self.unitRange = 3
        self.unitSpeed = 15
        self.cost = 200
    }
}

// Heavy class
class Heavy: Unit {
    
    override init() {
        super.init()
        
        self.unitHealth = 110
        self.unitAttack = 30
        self.unitRange = 1
        self.unitSpeed = 5
        self.cost = 250
    }
}

enum UnitType {
    case Melee
    case Ranged
    case Mage
    case Heavy
}

func damage(unit1: Unit, unit2: Unit) {
    unit1.setHealth(health: unit1.getHealth() - unit2.getAttack())
    unit2.setHealth(health: unit2.getHealth() - unit1.getAttack())
}
