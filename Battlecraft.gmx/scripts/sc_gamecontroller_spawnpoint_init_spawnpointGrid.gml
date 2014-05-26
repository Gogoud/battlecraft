
/*

    DESCRIPTION:
        1: Checks for all spawnpoints in the game
        2: Finds the first empty position in the spawnpoint grid
        3: Stores the id of the spawnpoint and the check if the spawnpoint is occupied (default false)
        
    Returns: Nothing
    Takes: Nothing


*/

for(i = 0; i < instance_count; i++)
{

      
    if(instance_id[i].object_index == obj_battlecraft_spawnpoint)
    {

       for(j = 0; j <= ds_grid_height(GRID_battlecraft_spawnpoint)-1; j++)
       {
            
            if(ds_grid_get(GRID_battlecraft_spawnpoint,0,j) == -1000)
            {
                ds_grid_set(GRID_battlecraft_spawnpoint,0,j, instance_id[i]);
                ds_grid_set(GRID_battlecraft_spawnpoint,1,j,false);
                j = 1000000000000000000000;
            }
       
       }
    
    }

}

