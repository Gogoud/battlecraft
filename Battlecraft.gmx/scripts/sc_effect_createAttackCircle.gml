
/*
    DESCRIPTION:
        1: Creates an attack circle 
        2: Sets that attack circles alarm, which determines how long it will stay (at the end of the alarm the attack circle is destroyed)
        3: Sets the size of the object
        
    
    Returns: Nothing
    
    Takes: 
        arg0 = create_x (int)
        arg1 = create_y (int)
        arg2 = Attack circles life (int)
        arg3 = size of attack attackcircle (int)


*/


var VAR_tempID = instance_create(argument0,argument1, obj_effect_attackCircle);

with(VAR_tempID)
{

    alarm[0] = argument2;
    CONST_SIZE = argument3;


}
