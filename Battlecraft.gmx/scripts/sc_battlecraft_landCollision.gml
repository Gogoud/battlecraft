/*

    Checks if the battlecraft is on a land tile
    reduces the battlecrafts speed
    if the speed is reduced to 0 (or as close as possible)
    the battlecraft is destroyed
    
    returns none;

*/


if(place_meeting(x,y, obj_landParent))
{

    if(speed > 0)
    {
    
        speed -= CONST_LANDFRICTION;
    
    }
    else
    {
    
        speed += CONST_LANDFRICTION;
    
    }
    
    
    if(speed > -CONST_LANDFRICTION && speed < CONST_LANDFRICTION)
    {
    
        instance_destroy();
    
    }

}
