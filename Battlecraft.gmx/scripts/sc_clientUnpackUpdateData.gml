tempGrid = ds_grid_create(6,MAX_CLIENTS);
ds_grid_read(tempGrid, buffer_read(serverBuffer, buffer_string));
for(i=0; i<= ds_grid_height(tempGrid)-1; i++)
{
    if(string(ds_grid_get(tempGrid,0,i)) != string(-1000)) //if this is true it is the end of the grid
    {
        if(ds_grid_get(tempGrid,0,i) != userName)  //don't update yourself
        {
              if(ds_map_find_value(clientMap, ds_grid_get(tempGrid,0,i)) == 0) //if the client does not exist, create it and add it to the map
              { 
                var tempID = instance_create(ds_grid_get(tempGrid,4,i).x,ds_grid_get(tempGrid,5,i).y,ds_grid_get(tempGrid,3,i)) 
                ds_map_add(clientMap, ds_grid_get(tempGrid,0,i) ,tempID);
                tempID.FLAG_isPlayer = false;
              }
              else
              {
                //else update the speed of the ID
                var tempID = ds_map_find_value(clientMap,ds_grid_get(tempGrid,0,i));
                tempID.x = ds_grid_get(tempGrid,4,i);
                tempID.y = ds_grid_get(tempGrid,5,i);
                tempID.hspeed = ds_grid_get(tempGrid,6,i);
                tempID.vspeed = ds_grid_get(tempGrid,7,i);
                VSPEED = ds_grid_get(tempGrid,7,i);
                if(ds_grid_get(tempGrid,8,i) == true) //if the server sends a defaultShoot actioncall
                {
                    sc_clientUnpackUpdateDataExecuteAction(ds_grid_get(tempGrid,6,i), tempID); 
                }
              }
        } 
    }
    else
    {
        break;
    }
}  
ds_grid_destroy(tempGrid);
