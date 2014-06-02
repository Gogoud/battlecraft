switch(STATEMACHINE_menu)
{

    case "start_game":
    {
        if(!surface_exists(surf_transition))
        {
            surf_transition_scale = 1;
            VAR_cRed = 255;
            VAR_cBlue = 255;
            VAR_cGreen = 255;
            VAR_color = make_colour_rgb(VAR_cRed,VAR_cGreen, VAR_cBlue);
            
            surf_transition = surface_create(room_width,room_height);
            surface_set_target(surf_transition);
            with(all)
            {
                if(sprite_index != -1)
                {
                
                    draw_self();
                    instance_destroy();
                
                }
            }
            surface_reset_target();
        }
        else
        {
        
            VAR_cRed -= 1;
            VAR_cBlue -= 1;
            VAR_cGreen -= 1;
            
            VAR_color = make_colour_rgb(VAR_cRed,VAR_cGreen, VAR_cBlue);
            surf_transition_scale -=0.0075;
            
            draw_surface_ext(surf_transition,0,0,surf_transition_scale, surf_transition_scale,0,VAR_color,1);
            
            if(surf_transition_scale <= 0)
            {
                if(surface_exists(surf_transition))
                {
                    surface_free(surf_transition);
                }
                room_goto(room_LobbyKeybindingLocalGame);
                instance_destroy();
            
            }
        
        }

       
    }
    break;
    
    

        
    case "goto_options_forward":

        if(round(view_xview[0]) < 1950)
        {
            view_xview[0]+=VAR_viewAcceleration;
            VAR_viewAcceleration +=0.5;

        }
        else
        {
            VAR_viewAcceleration = 0;
            STATEMACHINE_menu = "goto_options_backward";    
        
        }
        break;
    
    
    case "goto_options_backward":
        

        if(round(view_xview[0]>1900))
        {
               view_xview[0]-=VAR_viewAcceleration;
               VAR_viewAcceleration +=0.15;
               
        }
        else
        {
            view_xview[0] = 1900; 
            VAR_viewAcceleration =0;
        }

        break;
    
    case "goto_main_backward":
        if(round(view_xview[0]>-50))
        {
               view_xview[0]-=VAR_viewAcceleration;
               VAR_viewAcceleration +=0.50;
        
               
        }
        else
        {
        
            VAR_viewAcceleration = 0;
            STATEMACHINE_menu = "goto_main_forward";
        
        }
        break;
    case "goto_main_forward":
        if(round(view_xview[0] < 0))
        {
               view_xview[0]+=VAR_viewAcceleration;
               VAR_viewAcceleration +=0.15;
        }   
        else
        {
            view_xview[0] = 0;
        } 
    
        break;
    
            
    


}


