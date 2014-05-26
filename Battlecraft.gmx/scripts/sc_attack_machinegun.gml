///ATTACK FOR METALSTORM36


if(VAR_machinegun_reload_counter > CONST_MACHINEGUN_RELOAD_TIME)
{


    
    VAR_machinegun_reload = 0;
    

    speed = -CONST_MACHINEGUN_KNOCKBACK;
    sc_effect_createScreenshake("machinegun",-1);
    
    //attackCircle
    sc_effect_createAttackCircle(x - lengthdir_x(irandom_range(-14,-18),image_angle), y  - lengthdir_y(irandom_range(-14,-18),image_angle),1, irandom_range(8,15));
    sc_effect_createAttackCircle(x + lengthdir_x(irandom_range(-14,-18),image_angle), y  + lengthdir_y(irandom_range(-14,-18),image_angle),1, irandom_range(8,15));
     
    
    //Bullet
    var VAR_tempID = instance_create(x - lengthdir_x(-16,image_angle), y  - lengthdir_y(-16,image_angle), obj_attack_machinegun_bullet);
    VAR_tempID.CONST_PARENT = id;
    VAR_tempID.CONST_MACHINEGUN_DAMAGE = CONST_MACHINEGUN_DAMAGE;
    VAR_tempID.CONST_MACHINEGUN_ENEMY_KNOCKBACK = CONST_MACHINEGUN_ENEMY_KNOCKBACK; //knockback
    
    
    var VAR_tempID = instance_create(x  + lengthdir_x(-16,image_angle), y  + lengthdir_y(-16,image_angle), obj_attack_machinegun_bullet);
    VAR_tempID.CONST_PARENT = id;
    VAR_tempID.CONST_MACHINEGUN_DAMAGE = CONST_MACHINEGUN_DAMAGE; 
    VAR_tempID.CONST_MACHINEGUN_ENEMY_KNOCKBACK = CONST_MACHINEGUN_ENEMY_KNOCKBACK; //knockback

}

else
{


    VAR_machinegun_reload_counter ++;


}

