///creates the local server used to recieve data from the server
randomize();
localPort = irandom_range(500,65535);
localServer = network_create_server(network_socket_tcp, localPort,3);
while(localServer < 0)
{
   if(localPort < 65535)
   {
         localPort++;
         localServer = network_create_server(network_socket_tcp, localPort,3);
   }
   else
   {
     break;
   }
}
