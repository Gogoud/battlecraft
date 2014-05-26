/*

    Cycles to the next powerup if it exists
    
    returns updated position in the powerup list (int)
  


*/

var KEY_CYCLE_FORWARD = argument0;
var KEY_CYCLE_BACKWARD = argument1;
var VAR_LIST_POSITION = argument2;

if(keyboard_check_pressed(KEY_CYCLE_FORWARD))
{


    
    keyboard_clear(KEY_CYCLE_FORWARD);

    
    
    if(VAR_LIST_POSITION >= ds_list_size(LIST_POWERUPS)-1)
    {
    
    
        VAR_LIST_POSITION = 0;
    
    }
    else
    {
    
            VAR_LIST_POSITION ++;
    
    }
    
    
    

}

return VAR_LIST_POSITION;

/*

if(keyboard_check_pressed(KEY_CYCLE_BACKWARD))
{


    
    keyboard_clear(KEY_CYCLE_BACKWARD);
    if(VAR_LIST_POSITION >= 0)
    {
    
        VAR_LIST_POSITION --;
    
    }   
    
    else if(VAR_LIST_POSITION < 0)
    {
    
    
        VAR_LIST_POSITION = ds_list_size(LIST_POWERUPS)-1;
    
    }
    
    
    

}



