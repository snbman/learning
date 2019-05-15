//
//  main.swift
//  l2
//
//  Created by Егор Прозоров on 13/05/2019.
//  Copyright © 2019 Егор Прозоров. All rights reserved.
//

import Foundation

//задание 1

func divide (_ x: Int) {
    if ((x % 2) == 0) {
        print("Число четное")
    }else {
        print("Число нечетное")
    }
}
divide(7)

//Задание 2

func divideByThree (_ x: Int) {
    if (x % 3) == 0 {
        print ("Число делится на 3 нацело")
    }
}
divideByThree(27)

//Задание 3+4

var array : [Int] = []
for i in 1...100 {
    array.append(i)
}
for value in array {
    if (value % 2) == 0 || (value % 3) == 0{
        array.remove (at: array.firstIndex(of: value)!)
    }
}
print(array)

//задание 5

func fibo() -> ([Decimal]) {
    var fiboArray : [Decimal] = []
    for i in 0..<100 {
        if i < 2 {
            fiboArray.append(1)
        }else {
            let addElement = fiboArray[i-2] + fiboArray[i-1]
            fiboArray.append(addElement)
        }
    }
    return fiboArray
}
print(fibo())
