
/*

    DESCRIPTION:
        1: Takes a variable (the position of the stat being asked for) and returns it
        2: Preferable used in a loop 

        
    Returns: The description of the stat asked for
    Takes: The position of the description of the stat to get


*/



var VAR_i= argument0;


switch(VAR_i)
{

    case 0:
        return "Weapon: ";
        break;
    
    case 1:
        return "Reload speed: ";
        break;
    
    case 2:
        return "Knockback: ";
        break;
    
    case 3:
        return "Enemy knockback: ";
        break;
    
    case 4:
        return "Damage: ";
        break;
    
    
    default:
        return "";
        break;
    

        

}
