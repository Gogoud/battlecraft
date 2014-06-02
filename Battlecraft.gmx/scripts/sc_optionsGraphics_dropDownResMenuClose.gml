

if(ds_exists(LIST_res_dropdown, ds_type_list))
{
    for(i = 0; i < ds_list_size(LIST_res_dropdown); i++)
    {
        
        var VAR_tempID = ds_list_find_value(LIST_res_dropdown,i);
        VAR_tempID.vspeed  = -(3*(i+2));
    }             
}

