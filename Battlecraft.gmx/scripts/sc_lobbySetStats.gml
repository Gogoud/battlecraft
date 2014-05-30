/*
    DESCRIPTION:
        1: Sets the stats depending on hull
        
    Returns: Nothing
    Takes:
        
        arg0 = Hull to modify/set stats (0= Featherlight, 1 = Light, 2 = Medium, 3 = Heavy, 4 = Massive)
        
        HULL DATA
        
        
        arg1 = HULL NAME
        arg2 = MAX HP
        arg3 = ROTATION ACCELERATION
        arg4 = ROTATION LIMIT
        arg5 = SPEED ACCELERATION
        arg6 = SPEED ACCELERATION LIMIT
        arg7 = TREE IMPACT SPEED REDUCTION
        arg8 = BOOST DECREASE
        arg9 = WEIGHT LIMIT
        
        
        WEAPON DATA
        arg1 = WEAPON NAME
        arg2 = REALOAD TIME
        arg3 = PLAYER KNOCKBACK WHEN FIRING GUN
        arg4 = ENEMY KNOCKBACK WHEN HIT WITH GUN
        ar5 = DAMAGE 
        
*/


ds_grid_set(GRID_battlecraft_stats,0,argument0, argument1); 
ds_grid_set(GRID_battlecraft_stats,1,argument0, argument2); 
ds_grid_set(GRID_battlecraft_stats,2,argument0, argument3); 
ds_grid_set(GRID_battlecraft_stats,3,argument0, argument4);  
ds_grid_set(GRID_battlecraft_stats,4,argument0, argument5);
ds_grid_set(GRID_battlecraft_stats,5,argument0, argument6); 
ds_grid_set(GRID_battlecraft_stats,6,argument0, argument7);
ds_grid_set(GRID_battlecraft_stats,7,argument0, argument8);
ds_grid_set(GRID_battlecraft_stats,8,argument0, argument9);

