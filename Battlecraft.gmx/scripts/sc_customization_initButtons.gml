/*

    DESCRIPTION:
        1: Separates the object name into 3 different strings and stores them into 3 variables
        2: VAR_buttonFunction = which function will the button cycle through, (weap, hull or add_)
        3: VAR_buttonPlayer = which player to cycle through
        4: VAR_buttonCycle = Cycle left or right
        
    Returns: Nothing
    Takes: Nothing


*/

VAR_buttonFunction = object_get_name(id.object_index);
VAR_buttonFunction = string_delete(VAR_buttonFunction, 1, 4);
VAR_buttonFunction = string_delete(VAR_buttonFunction, 5, string_length(VAR_buttonFunction));




VAR_buttonPlayer = object_get_name(id.object_index);
VAR_buttonPlayer = string_delete(VAR_buttonPlayer, 1, 9);
VAR_buttonPlayer = string_delete(VAR_buttonPlayer, 3, string_length(VAR_buttonPlayer));


VAR_buttonCycle= object_get_name(id.object_index);
VAR_buttonCycle = string_delete(VAR_buttonCycle, 1, 12);

