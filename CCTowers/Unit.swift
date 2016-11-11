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

// Melee class
class Melee {
    var unitHealth: Int
    var unitAttack: Int
    var unitRange: Int
    var unitSpeed: Int
    var isLive: Bool = true
    
    init() {
        self.unitHealth = 80
        self.unitAttack = 20
        self.unitRange = 1
        self.unitSpeed = 10
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
    
//  All the setters
    func setHealth(health: Int) {
        self.unitHealth = health
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

// Ranged class
class Ranged {
    var unitHealth: Int
    var unitAttack: Int
    var unitRange: Int
    var unitSpeed: Int
    var isLive: Bool = true
    
    init() {
        self.unitHealth = 70
        self.unitAttack = 10
        self.unitRange = 2
        self.unitSpeed = 15
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
    
    //  All the setters
    func setHealth(health: Int) {
        self.unitHealth = health
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

// Mage class
class Mage {
    var unitHealth: Int
    var unitAttack: Int
    var unitRange: Int
    var unitSpeed: Int
    var isLive: Bool = true
    
    init() {
        self.unitHealth = 50
        self.unitAttack = 20
        self.unitRange = 3
        self.unitSpeed = 15
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
    
    //  All the setters
    func setHealth(health: Int) {
        self.unitHealth = health
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
