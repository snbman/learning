//
//  main.swift
//  l3_prozorov
//
//  Created by Егор Прозоров on 14/05/2019.
//  Copyright © 2019 Егор Прозоров. All rights reserved.
//

import Foundation

enum CarEngineState {
    case on, off
}
enum CarWindowsState {
    case open, close
}
enum Cargo {
    case put, empty
}
struct car {
    let mark : String
    var date : Int
    let trunkVolume : Int
    var engineState : CarEngineState
    var windowsState : CarWindowsState
    var cargo : Double?
    mutating func turnEngineOn(){
        self.engineState = .on
    }
    init (mark: String, date: Int, trunkVolume: Int, engineState: CarEngineState, windowsState: CarWindowsState, cargo: Double) {
        self.mark = mark
        self.date = date
        self.trunkVolume = trunkVolume
        self.engineState = engineState
        self.windowsState = windowsState
        self.cargo = cargo
    }
}
struct truck {
    let mark : String
    var date : Int
    let bodyVolume : Int
    var engineState : CarEngineState
    var windowsState : CarWindowsState
    var cargo : Double?
    mutating func closeWindows(){
        self.windowsState = .close
    }
    init (mark: String, date: Int, bodyVolume: Int, cargo: Double, windowsState: CarWindowsState, engineState: CarEngineState) {
        self.mark = mark
        self.date = date
        self.bodyVolume = bodyVolume
        self.engineState = engineState
        self.windowsState = windowsState
        self.cargo = cargo
        
    }
}
var car1 = car(mark: "bmw", date: 2016, trunkVolume: 350, engineState: .on, windowsState: .open, cargo: 200 )
car1.windowsState = .close
var car2 = car(mark: "Honda", date: 1996, trunkVolume: 200, engineState: .off, windowsState: .close, cargo: 100)
car2.cargo = 50.6
var car3 = car(mark: "Mercedes", date: 2019, trunkVolume: 500, engineState: .on, windowsState: .close, cargo: 0)
var truck1 = truck(mark: "MAN", date: 2017, bodyVolume: 2500, cargo: 1000.70, windowsState: .close, engineState: .off)
var truck2 = truck(mark: "VOLVO", date: 2005, bodyVolume: 5500, cargo: 3500.5, windowsState: .open, engineState: .on)

print (car1.windowsState)
print (car2.cargo)
print (car3.trunkVolume)
print (truck1.windowsState)
print (truck2.date)
