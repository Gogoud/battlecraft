/*
    handshake with the server 1 step after the user connects
    the user sends the data to the server
    called from alarm[0]
*/
//read user data 
//create the package which the user will send and sends it to the server
userBuffer = buffer_create(50,buffer_grow,1);
buffer_seek(userBuffer, buffer_seek_start, 0);
buffer_write(userBuffer, buffer_string, userName);
buffer_write(userBuffer, buffer_string, "client_type_connect");
buffer_write(userBuffer, buffer_string, string(localPort)); 
buffer_write(userBuffer, buffer_string, string(obj_battlecraft_1)) //change this to which class!!!!
//send and clear data
network_send_packet(userSocket, userBuffer,buffer_get_size(userBuffer));
buffer_delete(userBuffer);
