if(keyboard_check_pressed(CONST_KEY_POWERUP))
{

    keyboard_clear(CONST_KEY_POWERUP);
    var VAR_tempID = instance_create(x,y,obj_powerup_mineTorpedo);
    VAR_tempID.CONST_PARENT = id;

}
