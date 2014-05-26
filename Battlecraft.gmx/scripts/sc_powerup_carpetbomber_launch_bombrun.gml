/*    

    DESCRIPTION:
        1: Creates an object design specifically for distance checking in  this script only
        2: Moves the distance checker backwards (10 pixels/loop) until it hits the border of the room
        3: creates a carpetbomber at that position
        4: sets all variables for the bomber (direction to move towards the position of the player, speed, bombtimer and scale)
        5: cleans the distance checker from memory
        
    Returns: Nothing
    Takes: Nothing
*/


if(keyboard_check_pressed(CONST_KEY_POWERUP))
{
    keyboard_clear(CONST_KEY_POWERUP);    
    var VAR_temp_DistCheck = instance_create(x,y,obj_powerup_carpetbomber_distance_checker);

    
    while(sc_insideRectangle(0,0,room_width,room_height, VAR_temp_DistCheck))
    {
        VAR_temp_DistCheck.x -= lengthdir_x(10, direction);
        VAR_temp_DistCheck.y -= lengthdir_y(10, direction);
    }

 
    //SETUP CARPETBOMBER VALUES
    var VAR_temp_BomberID = instance_create(VAR_temp_DistCheck.x, VAR_temp_DistCheck.y, obj_powerup_carpetbomber);
    VAR_temp_BomberID.direction = point_direction(VAR_temp_DistCheck.x, VAR_temp_DistCheck.y, x,y);
    VAR_temp_BomberID.image_angle = direction-90;
    
    VAR_temp_BomberID.speed = CONST_CARPETBOMBER_SPEED; //speed
    VAR_temp_BomberID.alarm[0] = CONST_CARPETBOMBER_BOMBTIMER; //bombtimer
    VAR_temp_BomberID.image_xscale = CONST_CARPETBOMBER_SCALE;
    VAR_temp_BomberID.image_yscale = CONST_CARPETBOMBER_SCALE;
    
    //
    
    //CLEAN
    with(VAR_temp_DistCheck)
    {
        instance_destroy();
    }


}
