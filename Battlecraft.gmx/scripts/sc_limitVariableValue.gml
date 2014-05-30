/*

    DESCRIPTION:
        1: if the variable goes over a limit it snaps back to 0
        2: if the variable goes under 0 the variable snaps back to the max value of the variable

    Returns: new snapped variable value
    Takes: 
    
        arg0 = variable
        arg1 = max value for the variable
        arg2 = lowest value for the variable


*/


if(argument0 > argument1)
{

    return argument2;
}

else if(argument0 < argument2)
{

    return argument1; 
}
else
{

    return argument0;

}
