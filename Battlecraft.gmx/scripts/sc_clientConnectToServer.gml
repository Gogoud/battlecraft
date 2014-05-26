/*
    start client and connects to the server
*/

ini_open(working_directory + "\localUserData.ini");
var ip = ini_read_real("network", "connectToIp", -1)
ini_close();

var port = 6510;
userSocket = network_create_socket(network_socket_tcp);
userConnection = network_connect(userSocket, ip,port); 
alarm[0] = 1;
//finds an empty port
/*while(clientConnection < 0 || port < 65535)
{
       port++;
       clientConnection = network_connect(clientSocket, "193.11.160.54",port); 
}
  */
