/*
    creates and starts the network server
    loops through all network port until the program finds an empty network port
*/
port = 6510;
server = network_create_server(network_socket_tcp, port,6);
while(server < 0)
{
   if(port < 65535)
   {
         port++;
         server = network_create_server(network_socket_tcp, port,6);
   }
   else
   {
     break;
   }
}
