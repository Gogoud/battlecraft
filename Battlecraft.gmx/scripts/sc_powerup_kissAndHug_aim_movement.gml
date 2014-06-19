/*

    Calculate the speed and destination of the aim for the kiss and hug torpedo and sets it on its course
    
    returs none

*/

var VAR_lengthEquation = 128*(CONST_PARENT.speed*0.5);

var VAR_destination_x =  CONST_PARENT.x + lengthdir_x(clamp(VAR_lengthEquation, 64,350), CONST_PARENT.image_angle-270);
var VAR_destination_y =  CONST_PARENT.y + lengthdir_y(clamp(VAR_lengthEquation, 64,350), CONST_PARENT.image_angle-270);
   




if(distance_to_point(VAR_destination_x, VAR_destination_y) > 3)
{    
    move_towards_point(VAR_destination_x, VAR_destination_y,CONST_PARENT.speed+irandom_range(3,6));
}
else
{

    speed = 0;

}



