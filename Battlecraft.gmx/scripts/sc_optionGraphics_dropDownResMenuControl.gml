



/*

    DESCRIPTION:
    
    PLAYER OPENS THE DROP DOWN MENU
    -------------------------------
    1: If the player clicks on the button and activates the dropdown menu
    2: Create the menu list if it does not exist
    3: add all the buttons to the list and create  them
    4: Scale the buttons
    
    
    PLAYER CLOSES THE DROP DOWN MENU
    -------------------------------
    1: If the dropdown list exists (= dropdown menu exists)
    2: as long as it is not empty (=buttons still exist)
    3: Set vspeed to negative
    4: Check if the button is at the same level as the dropdown menu button
    5: if so, destroy the button and clear it from list
    6: Once the list is empty, remove it from memory
        
    
    
    
    Returns: Nothing    
    Takes: Nothing

*/




if(FLAG_resDropdown_active)
{
   if(!ds_exists(LIST_res_dropdown, ds_type_list))
   {
        LIST_res_dropdown = ds_list_create();
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_640_360));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_800_600));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1024_768));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1280_720));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1280_800));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1366_768));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1440_900));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1600_900));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1680_1050));
        ds_list_add(LIST_res_dropdown,instance_create(x, (y+sprite_get_height(spr_button))+(sprite_get_height(spr_button)*0.5)*ds_list_size(LIST_res_dropdown), obj_mainMenu_res_1900_1080));
                    
        for(i=0; i<ds_list_size(LIST_res_dropdown); i++)
        {
     
            var VAR_tempID = ds_list_find_value(LIST_res_dropdown,i);
            VAR_tempID.image_xscale = 0.5;
            VAR_tempID.image_yscale = 0.5;
                        
                    
        }
   }
}
else
{

    if(ds_exists(LIST_res_dropdown, ds_type_list))
    {
        if(!ds_list_empty(LIST_res_dropdown))
        {
            for(i = 0; i < ds_list_size(LIST_res_dropdown); i++)
            {
            
                var VAR_tempID = ds_list_find_value(LIST_res_dropdown,i);
                VAR_tempID.vspeed  = -(3*(i+2));
                
                if(VAR_tempID.bbox_top < y)
                {
                    ds_list_delete(LIST_res_dropdown,i);
                    with(VAR_tempID)
                    {
                        instance_destroy();
                    }
                }
                
            }
       }
       else
       {
       
          ds_list_destroy(LIST_res_dropdown);
       
       }
    }
}

