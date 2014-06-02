ini_open(working_directory + "configuration.ini");
var VAR_width = ini_read_real("graphics_options", "width", 1900);
var VAR_height = ini_read_real("graphics_options", "height", 1080);
ini_close();

window_set_size(VAR_width, VAR_height);
surface_resize(application_surface, VAR_width, VAR_height);
