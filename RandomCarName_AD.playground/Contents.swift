//: Playground - noun: a place where people can play

import UIKit

func RandomCarName(is_romanian_car:Bool)->String{
    if is_romanian_car == true{
        return "Dacia"
    }
    else {
        return "Audi"
    }
}

func RandomCarName(is_romanian_car:Int)->String{
    if is_romanian_car == 1 {
        return "One"
    }
    else {
        return "Another number"
    }
}

//call function
let y = RandomCarName(is_romanian_car:true)

let x = RandomCarName(is_romanian_car: 1)
