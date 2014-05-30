



/*

    DESCRIPTION:
    1: Draws the players battlecraft sprite at the specified position
    2: Draws the information about the specific battlecraft, gathered from the stat grid 

        
    Returns: Nothing
    
    Takes: 

    arg0 = X position of the battlecraft sprite
    arg1 = Y position of the battlecraft sprite
    arg2 = VAR_PLAYERNUMBER_battlecraft_hull_pos
    arg3 = VAR_PLAYERNUMBER_weapon_pos
    

*/





draw_sprite_ext(spr_battlecraft_1,0,argument0,argument1,2,2,0,c_white,1);
        
for(i = 0; i < ds_grid_width(GRID_battlecraft_stats); i++)
{
    draw_text(argument0 + 100, ((argument1)-32)+(i*32), sc_customization_getHullStatString(i) + string(ds_grid_get(GRID_battlecraft_stats,i,argument2)));
        
                        
    if(string(ds_grid_get(GRID_battlecraft_stats,i,VAR_p1_battlecraft_weapon_pos)) != string(-1000))
    {
                draw_text(argument0 + 450, ((argument1)-32)+(i*32),sc_customization_getWeaponStatString(i) +  string(ds_grid_get(GRID_battlecraft_stats,i,argument3)));
    }
        
}
        

