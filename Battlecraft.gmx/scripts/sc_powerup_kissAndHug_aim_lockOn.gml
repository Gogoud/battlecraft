/*

    Checks for a collision with a specific object and if it is within the lockOn Area it will 
    lock on to that object, else it unlock it from the view
    
    arg0 = object to check for
    returns none

*/

VAR_lockOnID = collision_rectangle(bbox_left-CONST_LOCK_ON_RADIUS,bbox_top-CONST_LOCK_ON_RADIUS,bbox_right+CONST_LOCK_ON_RADIUS,bbox_bottom+CONST_LOCK_ON_RADIUS,argument0,false,false)  

if(VAR_lockOnID)
{


    
    image_index = 0;
    FLAG_lockOn = true;  

    
}

if(distance_to_point(obj_battlecraft_1.x, obj_battlecraft_1.y) > CONST_LOCK_OFF_DISTANCE)
{
    
    FLAG_lockOn = false;
    VAR_lockOnCountdown = CONST_LOCK_ON_COUNTDOWN_MAX;


    
}



if(FLAG_lockOn)
{
    move_towards_point(VAR_lockOnID.x,VAR_lockOnID.y,obj_battlecraft_1.speed);
    
    if(instance_place(x, y,VAR_lockOnID))
    {
    
        VAR_lockOnCountdown --;
        
        //FIRE
        if(VAR_lockOnCountdown < 1)
        {
        
            image_index = 1;
            if(keyboard_check_pressed(obj_battlecraft_1.CONST_KEY_POWERUP_FIRE))
            {
            
                keyboard_clear(obj_battlecraft_1.CONST_KEY_POWERUP_FIRE);
                var VAR_tempID = instance_create(obj_battlecraft_1.x,obj_battlecraft_1.y, obj_powerup_kissAndHug_torpedo);
                VAR_tempID.VAR_target = VAR_lockOnID;
           
            
            }
        
        }
    }
    else
    {
    
        VAR_lockOnCountdown = CONST_LOCK_ON_COUNTDOWN_MAX;
    
    }
    
}
