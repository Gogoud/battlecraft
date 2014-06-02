
ini_open(working_directory + "configuration.ini");
ini_write_real("graphics_options", "width", surface_get_width(application_surface));
ini_write_real("graphics_options", "height", surface_get_height(application_surface));
ini_close();
