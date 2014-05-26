/*
    sends data about the players speed to the server
    argument0(bool) - client uses default attack?
*/
/*ini_open(working_directory + "\localUserData.ini");
var userName = ini_read_string("user","userName","");
ini_close();
*/
client_type_update_buffer = buffer_create(1600,buffer_grow, 1);
buffer_seek(client_type_update_buffer, buffer_seek_start,0);

buffer_write(client_type_update_buffer, buffer_string,userName);
buffer_write(client_type_update_buffer, buffer_string, "client_type_update_movement");
buffer_write(client_type_update_buffer, buffer_string, string(global.playerX));
buffer_write(client_type_update_buffer, buffer_string, string(global.playerY));
buffer_write(client_type_update_buffer, buffer_string, string(global.playerhspeed));
buffer_write(client_type_update_buffer, buffer_string, string(global.playervspeed));
buffer_write(client_type_update_buffer, buffer_string, string(global.FLAG_DEFAULT_ATTACK));
network_send_packet(userSocket,client_type_update_buffer,buffer_get_size(client_type_update_buffer));

buffer_delete(client_type_update_buffer);
