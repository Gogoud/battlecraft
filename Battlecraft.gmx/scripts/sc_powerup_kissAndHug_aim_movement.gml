/*

    Calculate the speed and destination of the aim for the kiss and hug torpedo and sets it on its course
    
    returs none

*/

var VAR_lengthEquation = 128*(obj_battlecraft_1.speed*0.5);
var VAR_destination_x =  obj_battlecraft_1.x + lengthdir_x(clamp(VAR_lengthEquation, 64,350), obj_battlecraft_1.image_angle-270);
var VAR_destination_y =  obj_battlecraft_1.y + lengthdir_y(clamp(VAR_lengthEquation, 64,350), obj_battlecraft_1.image_angle-270);



if(distance_to_point(VAR_destination_x, VAR_destination_y) > 3)
{    
    move_towards_point(VAR_destination_x, VAR_destination_y, obj_battlecraft_1.speed+irandom_range(3,6));
}
else
{

    speed = 0;

}



