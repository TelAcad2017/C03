//: Playground - noun: a place where people can play

func RandomCarName(is_romanian_car: Bool) -> String {
    print(is_romanian_car)
    //TODO: decide what car to show
    if is_romanian_car == true
    {
        return "Dacia"
    }
        
    else {
        return "Audi"
    }
    
}
print (RandomCarName(is_romanian_car: false))