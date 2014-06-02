if(mouse_check_button(mb_left))
{
    ini_open(working_directory + "\configuration.ini");
    FLAG_vsync = ini_read_real("graphics_options","vsync", false);
    var VAR_aa = ini_read_real("graphics_options", "aa", 0);
         
            
    if(!FLAG_vsync)
    {
        FLAG_vsync = true;   
    }
    else
    {
        FLAG_vsync = false;
    }
            
            
    display_reset(VAR_aa,FLAG_vsync);
    ini_write_real("graphics_options","vsync", FLAG_vsync); 
    ini_close();
    mouse_clear(mb_any);
}
