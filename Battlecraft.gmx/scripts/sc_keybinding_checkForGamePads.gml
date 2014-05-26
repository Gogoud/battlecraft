 
if(gamepad_is_supported() )
{


      if(gamepad_get_device_count()>0)
      {
    
        for(i = 0; i < gamepad_get_device_count(); i++)
        {
        
             if(gamepad_is_connected(i))
             {   
                ds_list_add(LIST_gamepads, true);
             }
             else
             {
                ds_list_add(LIST_gamepads, false);
             }
        
        }
    }

}

