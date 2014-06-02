/*
    DESCRIPTION:
        1: Loops through the objectname, counting each underscore
        2: If the count is 2, take the width of the resolution, remove everything after it
        3: Do the same for height
        4: Turn into int and removes all possible underscores
        
    Returns: Nothing
    Takes: Nothing
*/


VAR_resWidth = "";
VAR_resHeight = "";
var underscore_count = 0;
var VAR_objectName = object_get_name(id.object_index);





for(i=1; i < string_length(VAR_objectName); i++)
{

    var VAR_objectName = object_get_name(id.object_index);
    if(string_char_at(VAR_objectName,i) == "_")
    {
        underscore_count++;
    }
    
    
    if(underscore_count == 2)
    {
    
    
            VAR_resWidth = string_delete(VAR_objectName,1,i+1);
            for(j = 1; j < string_length(VAR_resWidth); j++)
            {
            
                    if(string_char_at(VAR_objectName,j-1) == "_")
                    {
                    
                        VAR_resWidth = string_delete(VAR_resWidth,j,string_length(VAR_resWidth));
                        break;
                    
                    }
            
            }
            
    
    }
    
    

}



var underscore_count = 0;
for(i=1; i < string_length(VAR_objectName); i++)
{
    var VAR_objectName = object_get_name(id.object_index);
    if(string_char_at(VAR_objectName,i) == "_")
    {
        underscore_count++;

    }
    
    if(underscore_count == 3)
    {    
            VAR_resHeight = string_delete(VAR_objectName,1,i+1);   
    
    }
}


VAR_resWidth = string_digits(VAR_resWidth);
VAR_resHeight = string_digits(VAR_resHeight); 
VAR_resWidth = real(VAR_resWidth);
VAR_resHeight = real(VAR_resHeight);
