ini_open(working_directory + "\configuration.ini");
var FLAG_vsync = ini_read_real("graphics_options","vsync", false);
VAR_aa = ini_read_real("graphics_options", "aa", 0);
  
switch(VAR_aa)
{
    case 0:
    if(display_aa >= 2)
    {
        VAR_aa = 2;
            
    }
    else
    {
        VAR_aa = 0;
    }
    break;
                
    case 2:
    if(display_aa >= 6)
    {
        VAR_aa = 4;
    }
    else
    {
        VAR_aa = 0;
    }
    break;
                
    case 4:
    if(display_aa >= 12)
    {
        VAR_aa = 8;
    }
    else
    {
        VAR_aa = 0;
    }
    break;
    
    case 8:
        VAR_aa = 0;
        break;
}
            
display_reset(VAR_aa,FLAG_vsync);
ini_write_real("graphics_options","aa", VAR_aa); 
mouse_clear(mb_any);
ini_close();
