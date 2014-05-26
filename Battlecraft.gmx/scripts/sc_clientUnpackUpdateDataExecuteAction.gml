/*
    argument0 = hspeed;
    argument1 = tempID
*/
/*if(argument0 >= 0)
{
    var tempProjectileID = instance_create(argument1.bbox_right, argument1.y, obj_projectile);
    tempProjectileID.hspeed = 12;
}
else
{
    var tempProjectileID = instance_create(argument1.bbox_left, argument1.y, obj_projectile);
    tempProjectileID.hspeed = -12;
}
