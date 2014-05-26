var VAR_tempID = instance_place(x,y, obj_powerup_creator)
if(VAR_tempID)
{


    if(VAR_tempID.sprite_index != -1)
    {
    
        if(ds_list_find_index(LIST_POWERUPS, VAR_tempID.VAR_pickedPowerup) == -1)
        {
            ds_list_add(LIST_POWERUPS, VAR_tempID.VAR_pickedPowerup);
        }
        VAR_tempID.sprite_index = -1;    
    
    }

}
