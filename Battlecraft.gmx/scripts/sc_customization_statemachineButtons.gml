/*

    DESCRIPTION:
        1: Checks which function the player wants to change (hull, add-on or weapon)
        2: Checks which player to change 
        3: Checks which way to cycle (right or left)
        4: Calls the action to the customization controller
        
    Returns: Nothing
    Takes: Nothing


*/


switch(VAR_buttonFunction)
{

    ///HULL START
    case "hull":
        switch(VAR_buttonPlayer)
        {
        
            case "p1":
                switch(VAR_buttonCycle)
                {
                    case "cycleLeft":
                        obj_LocalLobbyCustomizationController.VAR_p1_battlecraft_hull_pos--;
                        break;
                        
                    case "cycleRight":
                        obj_LocalLobbyCustomizationController.VAR_p1_battlecraft_hull_pos++;
                        break; 
                }
                break;
                
            case "p2":
                switch(VAR_buttonCycle)
                {
                    case "cycleLeft":
                        obj_LocalLobbyCustomizationController.VAR_p2_battlecraft_hull_pos--;
                        break;
                        
                    case "cycleRight":
                        obj_LocalLobbyCustomizationController.VAR_p2_battlecraft_hull_pos++;
                        break; 
                }
                break;
                
            case "p3":
                switch(VAR_buttonCycle)
                {
                    case "cycleLeft":
                        obj_LocalLobbyCustomizationController.VAR_p3_battlecraft_hull_pos--;
                        break;
                        
                    case "cycleRight":
                        obj_LocalLobbyCustomizationController.VAR_p3_battlecraft_hull_pos++;
                        break; 
                }
                break;
                
            case "p4":
                switch(VAR_buttonCycle)
                {
                    case "cycleLeft":
                        obj_LocalLobbyCustomizationController.VAR_p4_battlecraft_hull_pos--;
                        break;
                        
                    case "cycleRight":
                        obj_LocalLobbyCustomizationController.VAR_p4_battlecraft_hull_pos++;
                        break; 
                }
                break;
        }
        break;
        
        
        ///HULL END
        
        
        ///WEAPON START
        case "weap":
            switch(VAR_buttonPlayer)
            {
        
                case "p1":
      
                    switch(VAR_buttonCycle)
                    {
                        case "cycleLeft":
                        obj_LocalLobbyCustomizationController.VAR_p1_battlecraft_weapon_pos --;
                        break;
                                    
                        case "cycleRight":
                        obj_LocalLobbyCustomizationController.VAR_p1_battlecraft_weapon_pos ++;
                        break; 
                    }
                    break;
                       
                        
                case "p2":
                    switch(VAR_buttonCycle)
                    {
                        case "cycleLeft":
                        obj_LocalLobbyCustomizationController.VAR_p2_battlecraft_weapon_pos --;
                        break;
                                
                        case "cycleRight":
                         obj_LocalLobbyCustomizationController.VAR_p2_battlecraft_weapon_pos ++;
                        break; 
                    }
                    break;
                        
                case "p3":
                    switch(VAR_buttonCycle)
                    {
                            case "cycleLeft":
                                obj_LocalLobbyCustomizationController.VAR_p3_battlecraft_weapon_pos --;
                                break;
                                
                            case "cycleRight":
                                obj_LocalLobbyCustomizationController.VAR_p3_battlecraft_weapon_pos ++;
                                break; 
                    }
                    break;
                        
                case "p4":
                    switch(VAR_buttonCycle)
                    {
                        case "cycleLeft":
                            obj_LocalLobbyCustomizationController.VAR_p4_battlecraft_weapon_pos --;
                            break;
                                
                        case "cycleRight":
                            obj_LocalLobbyCustomizationController.VAR_p4_battlecraft_weapon_pos ++;
                            break; 
                    }
                    break;
                
                
                }
                break;
                
                
                
                
        ///ADD-ON START        
        case "add_":
            switch(VAR_buttonPlayer)
            {
        
                    case "p1":
                        switch(VAR_buttonCycle)
                        {
                            case "cycleLeft":
                            obj_LocalLobbyCustomizationController.VAR_p1_battlecraft_add_on_pos --;
                            break;
                                        
                            case "cycleRight":
                            obj_LocalLobbyCustomizationController.VAR_p1_battlecraft_add_on_pos ++;
                            break; 
                        }
                           
                            
                    case "p2":
                        switch(VAR_buttonCycle)
                        {
                            case "cycleLeft":
                            obj_LocalLobbyCustomizationController.VAR_p2_battlecraft_add_on_pos --;
                            break;
                                    
                            case "cycleRight":
                            obj_LocalLobbyCustomizationController.VAR_p2_battlecraft_add_on_pos ++;
                            break; 
                        }
                        break;
                            
                    case "p3":
                        switch(VAR_buttonCycle)
                        {
                                case "cycleLeft":
                                obj_LocalLobbyCustomizationController.VAR_p3_battlecraft_add_on_pos --;
                                    break;
                                    
                                case "cycleRight":
                                obj_LocalLobbyCustomizationController.VAR_p3_battlecraft_add_on_pos ++;
                                    break; 
                        }
                        break;
                            
                    case "p4":
                        switch(VAR_buttonCycle)
                        {
                            case "cycleLeft":
                                obj_LocalLobbyCustomizationController.VAR_p4_battlecraft_add_on_pos --;
                                break;
                                    
                            case "cycleRight":
                                obj_LocalLobbyCustomizationController.VAR_p4_battlecraft_add_on_pos ++;
                                break; 
                        }
                        break;
                
                
            }
            ///ADD-ON END
        
        break;

}
