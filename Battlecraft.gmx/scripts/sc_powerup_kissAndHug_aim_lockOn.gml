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




if(FLAG_lockOn)
{
    move_towards_point(VAR_lockOnID.x,VAR_lockOnID.y,CONST_PARENT.speed);
    
    if(instance_place(x, y,VAR_lockOnID))
    {
    
        VAR_lockOnCountdown --;
        
        //FIRE
        if(VAR_lockOnCountdown < 1)
        {
        
            image_index = 1;
            if(keyboard_check_pressed(CONST_PARENT.CONST_KEY_POWERUP))
            {
            
                keyboard_clear(CONST_PARENT.CONST_KEY_POWERUP);
                var VAR_tempID = instance_create(CONST_PARENT.x,CONST_PARENT.y, obj_powerup_kissAndHug_torpedo);
                VAR_tempID.VAR_target = VAR_lockOnID;
                VAR_tempID.CONST_PARENT = CONST_PARENT;
           
            
            }
        
        }
    }
    else
    {
    
        VAR_lockOnCountdown = CONST_LOCK_ON_COUNTDOWN_MAX;
    
    }
    
}
