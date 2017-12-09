//: Playground - noun: a place where people can play

import UIKit

func RandomCarName(ls_romanian_car: Bool) -> String{

    if ls_romanian_car == true{
        return "romanian";
    } else{
        return "other";
    }
}

//let = RandomCarName(ls_romanian_car: false)



let ret = RandomCarName(ls_romanian_car: false)

print(ret)
