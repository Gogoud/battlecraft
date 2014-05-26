/*
    unpacks the data sent from the user on login
*/
       //checks if the user connects 
         ///DEBUG ONLY REMOVE LATER
          /*ini_open(working_directory + "\connections.ini");
          ini_write_string(userName, "IP", ds_map_find_value(async_load, "ip"));
          ini_write_string(userName, "class", buffer_read(userBuffer, buffer_string));
          ini_close();
         */
         for(i=0; i <=ds_grid_height(connections)-1; i++)
         {
            if(string(ds_grid_get(connections,0,i)) == string(-1000))
            {
                ds_grid_set(connections,0,i,userName); //userName
                ds_grid_set(connections,1,i, ds_map_find_value(async_load, "ip")); //ip
                ds_grid_set(connections,2,i, real(buffer_read(userBuffer, buffer_string))); //port
                //ds_grid_set(connections,3,i, real(buffer_read(userBuffer, buffer_string))) //class
                break;
                exit;
            }
         }
          //respond that the server has recieved the client handshake and sends all active users to the client
