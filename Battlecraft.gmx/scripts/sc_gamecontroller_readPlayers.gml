/*    

    DESCRIPTION:
        1: Reads how many players there are in the game
        
    Returns: Number of players (int)
    Takes: Nothing
*/

ini_open(working_directory + "\configuration.ini");
var CONST_PLAYERS = ini_read_real("gameData", "number_of_players", -1); 
ini_close();

return CONST_PLAYERS;




