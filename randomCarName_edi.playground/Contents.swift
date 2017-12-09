//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func RandomCarName(is_romanian_car: Bool) -> String{
    if is_romanian_car == true {
        return "Dacia"
    }
    else {
        return "Audi"
    }
    
}

let Dacia = RandomCarName(is_romanian_car: true)
print (Dacia)


let Audi = RandomCarName(is_romanian_car: false)
print (Audi)

//pus pe git