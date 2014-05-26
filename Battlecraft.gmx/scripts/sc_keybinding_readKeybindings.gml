
/*

    DESCRIPTION:
        1: concatenate a string depending on player ( p<PLAYERNUMBER>_ )
        2: Reads all the keybindings from the ini file
        
    Returns: Nothing
    Takes: Nothing


*/


ini_open(working_directory + "\configuration.ini");

var VAR_keybinding_key = "p" + string(CONST_PLAYER_ID + 1) + "_";

CONST_KEY_FIRE = ini_read_real("controls", VAR_keybinding_key + "fire", -1);
CONST_KEY_POWERUP = ini_read_real("controls", VAR_keybinding_key + "powerup", -1);
CONST_KEY_ACCELERATE = ini_read_real("controls", VAR_keybinding_key + "accelerate", -1);
CONST_KEY_BRAKE = ini_read_real("controls", VAR_keybinding_key + "brake", -1);
CONST_KEY_ROTATE_LEFT= ini_read_real("controls", VAR_keybinding_key + "rotateLeft", -1);  
CONST_KEY_ROTATE_RIGHT= ini_read_real("controls", VAR_keybinding_key + "rotateRight", -1);          
        


ini_close();
keyboard_clear(keyboard_key);
