
if(ds_exists(obj_lobbyLocalGameController.LIST_gamepads,ds_type_list))
{

    ds_list_clear(obj_lobbyLocalGameController.LIST_gamepads);

} 

 
if(gamepad_is_supported() )
{


      if(gamepad_get_device_count()>0)
      {
    
        for(i = 0; i < gamepad_get_device_count(); i++)
        {
        
             if(gamepad_is_connected(i))
             {   
                ds_list_add(obj_lobbyLocalGameController.LIST_gamepads, true);
                
             }
             else
             {
                ds_list_add(obj_lobbyLocalGameController.LIST_gamepads, false);
             }
        
        }
    }

}

