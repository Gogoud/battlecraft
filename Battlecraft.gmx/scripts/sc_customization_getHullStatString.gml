
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
        return "Hull type: ";
        break;
    
    case 1:
        return "Max hp: ";
        break;
    
    case 2:
        return "Rotation acceleration: ";
        break;
    
    case 3:
        return "Max rotation speed: ";
        break;
    
    case 4:
        return "Speed acceleration: ";
        break;
    
    case 5:
        return "Max speed: ";
        break;
    
    case 6:
        return "Speed impact reduction: ";
        break;
    
    case 7:
        return "Boost decrease: ";
        break;
    
    case 8:
        return "Weight limit: ";
        break;
    
    default:
        return "";
        break;
    

        

}
