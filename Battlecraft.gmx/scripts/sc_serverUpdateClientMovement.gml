///if the client sends a call to update the clients movement the server will update it to the .ini file
    /*DEBUG ONLY, REMOVE ON LAUNCH*/
    /*ini_open(working_directory + "\connections.ini") ;
    ini_write_real(userName, "vspeed", buffer_read(userBuffer, buffer_s8));
    ini_write_real(userName, "hspeed", buffer_read(userBuffer, buffer_s8));               
    ini_close();
    /*---------------------------------------------*/
    for(i=0; i <=ds_grid_height(connections)-1; i++)
    {
              if(string(ds_grid_get(connections, 0, i)) == userName)
              {
                ds_grid_set(connections,4,i,real(buffer_read(userBuffer, buffer_string))); //x
                ds_grid_set(connections,5,i,real(buffer_read(userBuffer, buffer_string))); //y
                ds_grid_set(connections,6,i,real(buffer_read(userBuffer, buffer_string))); //hspeed
                ds_grid_set(connections,7,i,real(buffer_read(userBuffer, buffer_string))); //vspeed
                ds_grid_set(connections,8,i,real(buffer_read(userBuffer, buffer_string))); //action
                exit;
             }   
    }  
