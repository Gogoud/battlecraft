if(FLAG_writeKeybinding)
{

    FLAG_writeKeybinding = false;

     
        ini_open(working_directory + "\configuration.ini");
        ini_write_real("controls", argument0, VAR_keybinding);
        ini_close();
        
        mouse_clear(mb_any);

        keyboard_lastkey = "";
        image_index = 0;
    


}
