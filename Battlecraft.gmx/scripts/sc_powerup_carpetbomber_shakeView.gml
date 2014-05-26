/*    

    DESCRIPTION:
        
        1: loops through all player objects
        2: Finds the ID of the players
        3: Checks for a collision with the players 
        4: If true, shakes that players view 

        
    Returns: Nothing
    Takes: Nothing
*/



for(i = 0; i < instance_number(obj_battlecraft); i++)
{

      var VAR_tempID = instance_find(obj_battlecraft,i);
       
      if(collision_rectangle(x-700,y-700, x+700, y+700, VAR_tempID, false,false))
      {
          
            sc_effect_createScreenshake("carpetbomber", i);
      }
 
}

