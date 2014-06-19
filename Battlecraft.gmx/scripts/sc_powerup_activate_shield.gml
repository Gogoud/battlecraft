if(keyboard_check_pressed(CONST_KEY_POWERUP))
{
    var VAR_tempID = instance_create(x,y,obj_powerup_shield);
    VAR_tempID.CONST_PARENT = id;
}
