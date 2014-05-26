/*
    DESCRIPTION:
        1: Loops as many players active in the game
        2: Shuffles a position in GRID_battlecraft_spawnpoint 
        3: Checks if theres already a battlecraft located there (if true = Goto 2)
        4: Gets the id of the picked spawnpoint and creates a new battlecraft at its location
        5: Sets which number the player has (stored locally in that battlecraft object)
        6: Sets the check to see if there is already an battlecraft at that spawnpoint to true
        
    Returns: Nothing
    Takes: Nothing

*/

for(i = 0; i < CONST_PLAYERS; i++)
{

    var FLAG_breakLoop = false;
    while(!FLAG_breakLoop)
    {
    
        var VAR_pickedSpawnpoint = irandom_range(0, ds_grid_height(GRID_battlecraft_spawnpoint)-1);
        if(ds_grid_get(GRID_battlecraft_spawnpoint, 1 ,VAR_pickedSpawnpoint) == false)
        {
        
           
       
           var VAR_pickedSpawnpoint_ID = ds_grid_get(GRID_battlecraft_spawnpoint,0,VAR_pickedSpawnpoint);
          
           var VAR_battlecraft = 
           instance_create(
           VAR_pickedSpawnpoint_ID.x, 
           VAR_pickedSpawnpoint_ID.y,
           obj_battlecraft);
           
           VAR_battlecraft.CONST_PLAYER_ID = i;
           
           ds_list_add(LIST_playerIDS, VAR_battlecraft); 
           ///adds the id of all the players to the list
           
      
           
           
           ds_grid_set(GRID_battlecraft_spawnpoint, 1, VAR_pickedSpawnpoint, true); //Sets the spawn point to true, no other battlecraft can now spawn at that spawn point
           FLAG_breakLoop = true;
        }



    
    }
}

