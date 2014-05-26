var VAR_buttonID = argument0;


switch(VAR_buttonID)
{

    case obj_ui_button_connect:

        room_goto(room_game);
        instance_create(0,0, obj_client);
        instance_destroy();
        break;
    
    case obj_ui_button_createGame:

        room_goto(room_server);
        instance_destroy();
        break;
    
    case obj_ui_button_ip:
    

        ini_open(working_directory + "\localUserData.ini");
        ini_write_string("network","connectToIp",keyboard_string);
        ini_close();
        break;
    case obj_ui_button_local:
        room_goto(room_menu_local);
        break;



}
