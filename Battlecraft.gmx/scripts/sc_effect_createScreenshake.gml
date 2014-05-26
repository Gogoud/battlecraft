/*
    DESCRIPTION:
        1: Creates a screenshake effect object
        2: Sets the parent of the screenshake which is used by the screenshake object to determine the strength of the screenshake 
        
    Returns: Nothing
    
    Takes: 
        arg0 = ID of the screenshake parent (int)
        arg1 = View of the screenshake parent (int) (-1 if current view of the player)
        

*/



var VAR_tempID = instance_create(x,y, obj_effect_screenshake);

VAR_tempID.CONST_PARENT = argument0;

if(argument[1] == -1)
{
    VAR_tempID.CONST_VIEW_NUMBER = CONST_PLAYER_ID;
}
else
{

    VAR_tempID.CONST_VIEW_NUMBER = argument1;

}
    





