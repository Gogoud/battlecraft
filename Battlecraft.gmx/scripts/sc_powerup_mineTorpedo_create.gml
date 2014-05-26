if(keyboard_check_pressed(CONST_KEY_POWERUP_FIRE))
{

    keyboard_clear(CONST_KEY_POWERUP_FIRE);
    instance_create(x,y,obj_powerup_mineTorpedo);

}
