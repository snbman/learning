//
//  main.swift
//  l5_Prozorov
//
//  Created by Егор Прозоров on 23/05/2019.
//  Copyright © 2019 Егор Прозоров. All rights reserved.
//

import Foundation

enum CarWindowsState {
    case open, close
}
enum ActiveExhaustState {
    case on, off
}
enum SpoilerState {
    case on, off
}
protocol Car {
    func engineVolume() -> Int
    func clearedDistance() -> Double
    
}
extension Car {
    func openWindows(){
    }
}
class SportsCar : Car {
    var cylindersCount : Int
    var cylinderVolume : Int
    var vehicleSpeed : Double
    var lapTime : Double
    var carWindowsState : CarWindowsState
    var activeExhaust : ActiveExhaustState
    var spoiler : SpoilerState
    func engineVolume() -> Int {
        return cylindersCount * cylinderVolume
    }
    func clearedDistance() -> Double {
        return vehicleSpeed * lapTime
    }
    func openWindows() {
        self.carWindowsState = .open
    }
    init(cylindersCount: Int, cylinderVolume: Int, vehicleSpeed: Double, lapTime: Double, carWindowsState : CarWindowsState,activeExhaust : ActiveExhaustState, spoiler : SpoilerState) {
        self.cylindersCount = cylindersCount
        self.cylinderVolume = cylinderVolume
        self.vehicleSpeed = vehicleSpeed
        self.lapTime = lapTime
        self.carWindowsState = carWindowsState
        self.activeExhaust = activeExhaust
        self.spoiler = spoiler
    }
    func raceMode (){
        self.spoiler = .on
        self.activeExhaust = .on
    }
}
class TruckCar : Car {
    var cylindersCount : Int
    var cylinderVolume : Int
    var vehicleSpeed : Double
    var time : Double
    var carWindowsState : CarWindowsState
    var maxWeight : Double
    func engineVolume() -> Int {
        return cylindersCount * cylinderVolume
    }
    func clearedDistance() -> Double {
        return vehicleSpeed * time
    }
    func openWindows() {
        self.carWindowsState = .open
    }
    init(cylindersCount: Int, cylinderVolume: Int, vehicleSpeed: Double, time: Double, carWindowsState : CarWindowsState, maxWeight : Double){
        self.cylindersCount = cylindersCount
        self.cylinderVolume = cylinderVolume
        self.vehicleSpeed = vehicleSpeed
        self.time = time
        self.carWindowsState = carWindowsState
        self.maxWeight = maxWeight
    }
}
extension SportsCar : CustomStringConvertible{
    var description: String{
        return "Машина проехала круг за \(lapTime) минут."
    }
}
extension TruckCar : CustomStringConvertible{
    var description: String{
        return "Автомобиль имеет двигатель объемом \(engineVolume()) литров."
    }
}
    var car1 = SportsCar(cylindersCount: 8, cylinderVolume: Int(0.5), vehicleSpeed: 120, lapTime: 20, carWindowsState: .close, activeExhaust: .off, spoiler: .off)
car1.raceMode()
print(car1)
var car2 = TruckCar(cylindersCount: 8, cylinderVolume: 1, vehicleSpeed: 80, time: 60, carWindowsState: .open, maxWeight: 20000)
print(car2)
car2.carWindowsState = .close

