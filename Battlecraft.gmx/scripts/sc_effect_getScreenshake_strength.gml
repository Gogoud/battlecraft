/*
    DESCRIPTION:
        1: Gets the screenshake strength depending on the parent (set in the creators script)
        
    Returns: Strength of the screenshake (int)
    Takes: Nothing

*/


switch(CONST_PARENT)
{

    case "machinegun":
        return irandom_range(1,2);
        break;
    case "bb12":
        return irandom_range(20,30);
        break;
    case "tree_splinters":
        return irandom_range(2,5);
        break;
    case "kissAndHug":
        return irandom_range(70,100);
        break;
    case "mineTorpedo_mine":
        return irandom_range(8,13);
        break;
    case "carpetbomber":
        return irandom_range(3,6);
        break;

}
