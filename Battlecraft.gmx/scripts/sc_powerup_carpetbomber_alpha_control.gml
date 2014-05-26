/*    

    DESCRIPTION:
        
        1: Checks collision with a player
        2: Becomes transparent
        3: Else become opaque

        
    Returns: Nothing
    Takes: Nothing
*/



if(collision_rectangle(bbox_left-5,bbox_top-5, bbox_right+5,bbox_bottom+5,obj_battlecraft, false,false))
{

    if(VAR_alpha > 0.7)
    {
        VAR_alpha -= 0.005;
    }
    else
    {
    
        VAR_alpha = 0.7;
    
    }
}
else
{

    if(VAR_alpha < 1)
    {
    
        VAR_alpha +=0.005;
    
    }
    else
    {
    
            VAR_alpha = 1;
    
    }


}
