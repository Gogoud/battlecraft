ini_open(working_directory + "\configuration.ini");
var FLAG_vsync = ini_read_real("graphics_options","vsync", false);
var VAR_aa = ini_read_real("graphics_options", "aa", 0);
display_reset(VAR_aa,FLAG_vsync);
