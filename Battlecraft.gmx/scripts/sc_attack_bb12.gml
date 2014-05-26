

FLAG_canAttack_bb12 = false;
FLAG_drawAttackCircle = true;
speed = -CONST_KNOCKBACK_BB12;
alarm[1] = CONST_RELOADSPEED_BB12;
//sc_setScreenshake_parent("bb12");
//sc_createAttackCircle(x,y,10,irandom_range(25,35));








///Create bullets

for(i = direction -45; i <= direction +45; i+=12)
{

    VAR_tempID = instance_create(x + lengthdir_x(0,image_angle), y  + lengthdir_y(0,image_angle), obj_attack_bb12_bullet);
    VAR_tempID.direction = i


}



/*
VAR_tempID = instance_create(x + lengthdir_x(0,image_angle), y  + lengthdir_y(0,image_angle), obj_attack_bb12_bullet);
VAR_tempID.direction = direction;



VAR_tempID = instance_create(x + lengthdir_x(0,image_angle), y  + lengthdir_y(0,image_angle), obj_attack_bb12_bullet);
VAR_tempID.direction = direction +45;





