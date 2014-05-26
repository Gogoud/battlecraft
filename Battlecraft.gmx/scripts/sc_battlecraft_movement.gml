
/*var CONST_KEY_ACCELERATE = argument0;
var CONST_KEY_BRAKE = argument1;
var CONST_KEY_ROTATE_RIGHT = argument2;
var CONST_KEY_ROTATE_LEFT = argument3;
*/
if(keyboard_check(CONST_KEY_ACCELERATE))
{

    speed +=CONST_ACCELERATION;
    
    if(FLAG_recievedBoost == 0)
    {
        if(speed > CONST_ACCELERATION_LIMIT)
        {
    
            speed = CONST_ACCELERATION_LIMIT;
    
        }
    }
    else if(FLAG_recievedBoost == 1)
    {
            if(speed > CONST_ACCELERATION_LIMIT*2)
            {
                speed = CONST_ACCELERATION_LIMIT*2;
            }
    
    }
    else if(FLAG_recievedBoost == 2)
    {
    
        if(speed > CONST_ACCELERATION_LIMIT)
        {
        
            speed -= CONST_BOOST_DECREASE;
        
        }
        else
        {
        
            FLAG_recievedBoost = 0;
        
        }
    
    }
    var VAR_tempID = instance_create(x,y, obj_water_trail);
    VAR_tempID.CONST_BATTLECRAFT_PARENT_ID = id;

}

if(keyboard_check(CONST_KEY_BRAKE))
{

    speed -=CONST_ACCELERATION;
    
    if(speed < -CONST_ACCELERATION_LIMIT)
    {
    
        speed = -CONST_ACCELERATION_LIMIT;
    
    }
    

}


if(keyboard_check(CONST_KEY_ROTATE_RIGHT))
{

    VAR_torque_acceleration +=CONST_TORQUE_ACCELERATION;
    
    if(VAR_torque_acceleration > CONST_TORQUE_ACCELERATION_LIMIT)
    {
    
        VAR_torque_acceleration = CONST_TORQUE_ACCELERATION_LIMIT;
    
    }
    
    direction -= VAR_torque_acceleration;
    

}
else
{

    if(!keyboard_check(CONST_KEY_ROTATE_LEFT))
    {
        if(VAR_torque_acceleration > 0)
        {
    
            VAR_torque_acceleration -= CONST_TORQUE_ACCELERATION;
            direction -= VAR_torque_acceleration;   
        }
    }

}









if(keyboard_check(CONST_KEY_ROTATE_LEFT))
{

    VAR_torque_acceleration -=CONST_TORQUE_ACCELERATION;
    
    if(VAR_torque_acceleration < -CONST_TORQUE_ACCELERATION_LIMIT)
    {
    
        VAR_torque_acceleration = -CONST_TORQUE_ACCELERATION_LIMIT;
    
    }
    
    direction -= VAR_torque_acceleration;
    

}

else
{

    if(!keyboard_check(CONST_KEY_ROTATE_RIGHT))
    {
        if(VAR_torque_acceleration < 0)
        {
    
            VAR_torque_acceleration -= -CONST_TORQUE_ACCELERATION;
            direction -= VAR_torque_acceleration;   
        }
    }

}


