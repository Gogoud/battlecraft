if(!ds_list_empty(LIST_POWERUPS))
{
   
    
    switch(ds_list_find_value(LIST_POWERUPS, VAR_powerup_list_position))
    {
    
        case obj_powerup_kissAndHug_torpedo:
            if(!instance_exists(obj_powerup_kissAndHug_aim))
            {
            
                instance_create(x + lengthdir_x(128,direction),y + lengthdir_y(128,direction),obj_powerup_kissAndHug_aim);
            
            }
            break;
        case obj_powerup_mineTorpedo:
            sc_powerup_mineTorpedo_create();
            break;
        case obj_powerup_carpetbomber:
            sc_powerup_carpetbomber_launch_bombrun();
            break;
    
    }
}

