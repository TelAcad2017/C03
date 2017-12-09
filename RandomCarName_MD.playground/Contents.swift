func RandomCarName(is_romanian_car: Bool) -> String{
    print(is_romanian_car)
    //TODO: decide what car to show
    return "Dacia"
}


let initial_bool = true

var final_param = false

if    initial_bool == false
{
    final_param = false
}
else
{
    final_param = true
}

let ret = RandomCarName(is_romanian_car: final_param)
print(ret)
