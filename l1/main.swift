//
//  main.swift
//  l1
//
//  Created by Егор Прозоров on 08/05/2019.
//  Copyright © 2019 Егор Прозоров. All rights reserved.
//

import Foundation
    //уравнение 6x^2+4x+10=0
var x: (Float?,Float?) = (0,0)
var a: Float = 6
var b: Float = 30
var c: Float = 10
var D = (b*b)-(4*a*c)

if D > 0 {
    x.0 = (-b + sqrt(D)) / (Float)(2) * (a)
    x.1 = (-b - sqrt(D)) / (Float)(2) * (a)
    print(x)
}else if D<0 {
    print("Нет решений")
}else {
    x.0 = (-b)/(2*a)
    print(x)
}
print(x)

//Задание 2 (треугольник)

var longSide : Double = 10
var shortSide : Double = 5

var square : Double = (0.5 * longSide * shortSide)
print (square)

var hypotinuse = sqrt((pow(longSide,2)+pow(shortSide,2)))
print (hypotinuse)

var perimeter = (longSide + shortSide + hypotinuse)
print (perimeter)

//Задание 3 (вклад)

var money : Float = 100000
var percent : Float = 5
var years = 7

for i in 1...years {
    money = money + money * percent / 100;
    print ("Сумма на счете через \(i) лет составит: ) \(money)")
}
