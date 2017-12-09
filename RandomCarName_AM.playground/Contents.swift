//: Playground - noun: a place where people can play

import UIKit

func RandomCarName(is_romanian_car: Bool) -> String {
    print(is_romanian_car)
    
    var car = ""
    
    if is_romanian_car {
        car = "Dacia"
        return car
    } else {
        car = "Audi"
        return car
    }
}


let dacia = RandomCarName(is_romanian_car: true)
print("The most driven car in Romania is: \(dacia)")

let audi = RandomCarName(is_romanian_car: false)
print("One expensive car that you can drive is: \(audi)")

