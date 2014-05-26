/*

    checks for input from the player
    waits for a key to be pressed
    if the player presses the button again it will write that keybinding to configuration.ini
    
    arg0 = function (p1_fire, p2_fire) (string)
    
    returns none
    

*/


if(!FLAG_waitForInput)
{

        
    if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y, id))
    {
    
        with(all)
        {
            FLAG_waitForInput = false;
            image_index = 0;
        }
        FLAG_waitForInput = true;
        mouse_clear(mb_any);
    }

}
else
{

    image_index = 1;
    VAR_keybinding = keyboard_lastkey;

}



