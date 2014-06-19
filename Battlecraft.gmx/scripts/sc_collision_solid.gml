var VAR_tempID = instance_place(x,y,obj_solid_parent); 
if(VAR_tempID)
{     
             
    if(object_index == obj_battlecraft)
    {
        if(speed > CONST_ACCELERATION_LIMIT*0.75)
        {
            VAR_currentHP -= speed;
        }
        move_outside_solid(direction+180, -1);
        speed = -(speed *0.5);    
    }    
    else
    {

        instance_destroy();

    }
}
