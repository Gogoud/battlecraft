/*


  Creates a cloud 
  sets its starting coordinates and size
  
  arg0 = x
  arg1 = y
  arg 2 = size
  returns none

*/

var VAR_tempID = instance_create(argument0,argument1, obj_effect_cloud);
VAR_tempID.image_xscale = argument2;
VAR_tempID.image_yscale = argument2;
