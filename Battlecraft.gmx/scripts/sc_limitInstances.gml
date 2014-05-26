/*

    limits the number of instances of an object which can be in a game
    
    arg0 = the object to limit
    arg1 = number of the limit
    
    returns none


*/

if(instance_number(argument0) > argument1)
{

 instance_destroy();

}


