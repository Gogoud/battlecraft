if(mouse_check_button_pressed(mb_left))
{
    ini_open(working_directory + "\configuration.ini");
    if(FLAG_screenshake)
    {
        FLAG_screenshake = false;
    }
    else
    {
        FLAG_screenshake = true;
    }

    ini_write_real("graphics_options","screenshake", FLAG_screenshake); 
    ini_close();
    mouse_clear(mb_any);
}
