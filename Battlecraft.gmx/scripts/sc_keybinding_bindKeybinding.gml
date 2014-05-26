if(mouse_check_button_pressed(mb_left))
{

    if(position_meeting(mouse_x, mouse_y, id))
    {
    
        if(keyboard_lastkey != -1)
        {
            //Unbind all other similar keys
            for(i = 0; i <= instance_count; i++)
            {
                
                if(object_get_parent(instance_id[i]) == obj_keybind_button_parent)
                {
                    if(instance_id[i].VAR_keybinding == keyboard_lastkey)
                    {
                
                        instance_id[i].VAR_keybinding = -1;
                
                    }
                }

            }
            
            
            VAR_keybinding = keyboard_lastkey;
            keyboard_lastkey = -1;
            mouse_clear(mb_left)   
        }    
    
    }

}
