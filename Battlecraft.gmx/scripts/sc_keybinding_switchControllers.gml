/*

    Checks which the of the game controller which is selected, if it is set
    to gamepad, draw all buttons to a surface, deactivate buttons and draw surface
    
    else
    activate buttons and destroy surface

*/

if(Var_active_controller  == "gamepad")
{


  if(!FLAG_buttonsDeactivated)
  {
  
  
        if(!surface_exists(SURFACE_deactivated_buttons))
        {
            SURFACE_deactivated_buttons = surface_create(room_width,room_height);  
                     
        }     
        
        for(i = 0; i < ds_list_size(LIST_childButtons); i++)
        {
                
    
            if(ds_list_find_value(LIST_childButtons,i).image_alpha > 0.75)
            {
    
                with(ds_list_find_value(LIST_childButtons,i))
                {
                    image_alpha -= 0.01;
                }
            }
                        
            else
            {
                     
                            
                surface_set_target(SURFACE_deactivated_buttons);
                with(ds_list_find_value(LIST_childButtons,i))
                {
                    sc_keybinding_drawButton();
                    instance_deactivate_object(id);
                }
                    surface_reset_target();
                    FLAG_buttonsDeactivated = true;
                            
            }
                    
        }
    }
}

else
{

  if(surface_exists(SURFACE_deactivated_buttons))
  {
    for(i = 0; i < ds_list_size(LIST_childButtons); i++)
    {
        instance_activate_object(ds_list_find_value(LIST_childButtons,i)) 
    }
    surface_free(SURFACE_deactivated_buttons);
    FLAG_buttonsDeactivated = false;


  }
  
  else
  {
    for(i = 0; i < ds_list_size(LIST_childButtons); i++)
    {
    
        with(ds_list_find_value(LIST_childButtons,i))
        {
        
            if(image_alpha < 1)
            {
                image_alpha += 0.0075;
            }
        
        }
        
    
    }
  
  }

}

