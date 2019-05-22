//
//  main.swift
//  l4_Prozorov
//
//  Created by Егор Прозоров on 20/05/2019.
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
enum ActiveExhaustState {
    case on, off
}
enum SpoilerState {
    case on, off
}
enum AllWheelDriveState {
    case on, off
    }
enum TrainHornState {
    case on, off
}
class Car {
    let mark : String
    var date : Int
    let trunkVolume : Int
    var engineState : CarEngineState
    var windowsState : CarWindowsState
    var cargo : Double?
    func turnEngineOn(){
        self.engineState = .on
    }
    func openWindows(){
        self.windowsState = .open
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
class SportsCar : Car {
    var activeExhaust : ActiveExhaustState
    var spoiler : SpoilerState
    
    init(mark: String, date: Int, trunkVolume: Int, engineState: CarEngineState, windowsState: CarWindowsState, cargo: Double, activeExhaust : ActiveExhaustState, spoiler : SpoilerState) {
        self.activeExhaust = activeExhaust
        self.spoiler = spoiler
        super.init(mark: mark, date: date, trunkVolume: trunkVolume, engineState: engineState, windowsState: windowsState, cargo: cargo)
    }
    func raceMode (){
        self.spoiler = .on
        self.activeExhaust = .on
    }
    func normalMode() {
        self.spoiler = .off
        self.activeExhaust = .off
    }
}
class TruckCar : Car {
    var allWheelDrive : AllWheelDriveState
    var trainHorn : TrainHornState
    init(mark: String, date: Int, trunkVolume: Int, engineState: CarEngineState, windowsState: CarWindowsState, cargo: Double, allWheelDrive: AllWheelDriveState, trainHorn: TrainHornState) {
        self.allWheelDrive = allWheelDrive
        self.trainHorn = trainHorn
        super.init(mark: mark, date: date, trunkVolume: trunkVolume, engineState: engineState, windowsState: windowsState, cargo: cargo)
    }
    func badRoad (){
        self.allWheelDrive = .on
    }
    func badDriverAhead(){
        self.trainHorn = .on
    }
}
var car1 = SportsCar(mark: "BMW", date: 2019, trunkVolume: 200, engineState: .on, windowsState: .close, cargo: 0, activeExhaust: .on, spoiler: .on)
car1.normalMode()
var car2 = TruckCar(mark: "MAN", date: 2017, trunkVolume: 5000, engineState: .off, windowsState: .open, cargo: 3000, allWheelDrive: .off, trainHorn: .off)
car2.badRoad()
print (car1.spoiler)
print (car1.mark)
print (car2.allWheelDrive)
