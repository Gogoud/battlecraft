
var VAR_tempID = instance_place(x,y,obj_battlecraft_parent);
if(VAR_tempID)
{
  if((VAR_tempID == CONST_PARENT && FLAG_canAttackParent) || VAR_tempID != CONST_PARENT)
  {
        for(i = 0; i < CONST_PLAYERS; i++)
        {
            var VAR_tempID_screenshake = instance_find(obj_battlecraft,i);
            if(distance_to_object(VAR_tempID_screenshake) < CONST_SCREENSHAKE_LENGTH)
            {
            
                sc_effect_createScreenshake("kissAndHug", VAR_tempID_screenshake.CONST_PLAYER_ID)
            
            }
        
        }
        
        repeat(irandom_range(4,8))
        {
            //sc_createAttackCircle(x + irandom_range(-16,16),y + irandom_range(-16,16),irandom_range(4,8),irandom_range(40,70));
        }
        
        repeat(irandom_range(12,20))
        {
            instance_create(x + irandom_range(-32,32), y + irandom_range(-32,32), obj_effect_cloud);
        }
        instance_destroy();
  }
}

