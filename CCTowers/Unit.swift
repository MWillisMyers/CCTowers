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

class Melee {
    var unitHealth: Int
    var unitAttack: Int
    var unitDefense: Int
    var unitRange: Int
    var unitSpeed: Int
    
    init(unitHealth: Int, unitAttack: Int, unitDefense: Int, unitRange: Int, unitSpeed: Int) {
        self.unitHealth = unitHealth
        self.unitAttack = unitAttack
        self.unitDefense = unitDefense
        self.unitRange = unitDefense
        self.unitSpeed = unitSpeed
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getHealth() -> Int {
        return self.unitHealth
    }
    
    func getAttack() -> Int {
        return self.unitAttack
    }
    
    func getDefense() -> Int {
        return self.unitDefense
    }
    
    func getRange() -> Int {
        return self.unitRange
    }
    
    func getSpeed() -> Int {
        return self.unitSpeed
    }
    
    func setHealth(health: Int) {
        self.unitHealth = health
    }
}
