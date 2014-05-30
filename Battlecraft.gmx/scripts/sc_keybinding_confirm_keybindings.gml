
if(position_meeting(mouse_x,mouse_y, id))
{

    if(mouse_check_button_pressed(mb_left))
    {
    
        for(i = 0; i <= instance_count; i++)
        {
    
            if(object_get_parent(instance_id[i].object_index) == obj_keybind_button_parent)
            {
                ini_open(working_directory + "configuration.ini");
                
                if(string(instance_id[i].VAR_keybinding) != "UNSET")
                {
                    
                    ini_write_real("controls", string(instance_id[i].CONST_KEYBIND_FUNCTION), instance_id[i].VAR_keybinding);
                  
                } 
                 
                ini_write_real("gameData", "number_of_players", obj_lobbyLocalGameController.VAR_players);
                ini_close();
            }
        
        }
                with(all)
                {
                
                    instance_destroy();
                
                }
                room_goto(room_LobbyCustomizationLocalGame);
                mouse_clear(mb_any);
                keyboard_clear(keyboard_key);
    }


}
