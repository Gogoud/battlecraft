for(i = 0; i <= ds_grid_height(connections)-1; i++)
{
 if(string(ds_grid_get(connections, 0,i)) != string(-1000))
 {
    serverSocket = network_create_socket(network_socket_tcp);
    network_connect(serverSocket, ds_grid_get(connections, 1,i), ds_grid_get(connections,2,i));
    server_update_buffer = buffer_create(800, buffer_grow, 1);
    buffer_seek(server_update_buffer, buffer_seek_start, 0);
    buffer_write(server_update_buffer, buffer_string, "server_type_update");
    buffer_write(server_update_buffer, buffer_string, ds_grid_write(connections)); 
    /*DEBUG*/lastBufferSize = buffer_get_size(server_update_buffer);/*DEBUG*/
    network_send_packet(serverSocket, server_update_buffer, buffer_get_size(server_update_buffer));
    buffer_delete(server_update_buffer);
    network_destroy(serverSocket);
 }
 else
 {
    break;
 }
}
   //disconnect from client   
