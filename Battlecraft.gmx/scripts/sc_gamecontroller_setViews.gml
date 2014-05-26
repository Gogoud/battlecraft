/*    

    DESCRIPTION:
        1: Checks how many players who are in game
        2: Sets view depending on player number
        
    Returns: Nothing
    Takes: Nothing
*/

switch(ds_list_size(LIST_playerIDS))
{

    case 2:  
        view_enabled = true;
        view_visible[0] = true;
        view_object[0] = ds_list_find_value(LIST_playerIDS, 0);
        
        view_xview[0] = 0;
        view_yview[0] = 0;
        view_wview[0] = CONST_VIEW_WIDTH;
        view_hview[0] = CONST_VIEW_HEIGHT;
        
        view_hborder[0] = 700;
        view_vborder[0] = 700;
        
        view_xport[0] = 0;
        view_yport[0] = 0;
        view_wport[0] = 1920;
        view_hport[0] = 1080;
        
        
        
        
        
        view_visible[1] = true;
        view_object[1] = ds_list_find_value(LIST_playerIDS, 1);
        
        view_xview[1] = 0;
        view_yview[1] = 0;
        view_wview[1] = CONST_VIEW_WIDTH;
        view_hview[1] = CONST_VIEW_HEIGHT;
        
        view_hborder[1] = CONST_VIEW_WIDTH*0.5;
        view_vborder[1] = CONST_VIEW_HEIGHT*0.5;
        
        view_xport[1] = 0;
        view_yport[1] = 1090;
        view_wport[1] = 1920;
        view_hport[1] = 1080;
        
        break;
        
    case 3:
        //0
        view_enabled = true;
        view_visible[0] = true;
        view_object[0] = ds_list_find_value(LIST_playerIDS, 0);
        
        view_xview[0] = 0;
        view_yview[0] = 0;
        view_wview[0] = CONST_VIEW_WIDTH;
        view_hview[0] = CONST_VIEW_HEIGHT;
        
        view_hborder[0] = CONST_VIEW_WIDTH*0.5;
        view_vborder[0] = CONST_VIEW_HEIGHT*0.5;
        
        view_xport[0] = 0;
        view_yport[0] = 0;
        view_wport[0] = 1920;
        view_hport[0] = 1080;
        //0
        
        
        //1
        view_visible[1] = true;
        view_object[1] = ds_list_find_value(LIST_playerIDS, 1);
        
        view_xview[1] = 0;
        view_yview[1] = 0;
        view_wview[1] = CONST_VIEW_WIDTH;
        view_hview[1] = CONST_VIEW_HEIGHT;
        
        view_hborder[1] = CONST_VIEW_WIDTH*0.5;
        view_vborder[1] = CONST_VIEW_HEIGHT*0.5;
        
        view_xport[1] = 0;
        view_yport[1] = 1090;
        view_wport[1] = 1920*0.5;
        view_hport[1] = 1080;
        //1
        
        
        
        
        //2
        view_visible[2] = true;
        view_object[2] = ds_list_find_value(LIST_playerIDS, 2);
            
        view_xview[2] = 0;
        view_yview[2] = 0;
        view_wview[2] = CONST_VIEW_WIDTH;
        view_hview[2] = CONST_VIEW_HEIGHT;
            
        view_hborder[2] = 320;
        view_vborder[2] = 240;
            
        view_xport[2] = (1920*0.5) + 5;
        view_yport[2] = 1090;
        view_wport[2] = 1920*0.5;
        view_hport[2] = 1080;
        //2
        
        
        break;
        
    case 4:
    
        //0
        view_enabled = true;
        view_visible[0] = true;
        view_object[0] = ds_list_find_value(LIST_playerIDS, 0);
        
        view_xview[0] = 0;
        view_yview[0] = 0;
        view_wview[0] = CONST_VIEW_WIDTH;
        view_hview[0] = CONST_VIEW_HEIGHT;
        
        view_hborder[0] = CONST_VIEW_WIDTH*0.5;
        view_vborder[0] = CONST_VIEW_HEIGHT*0.5;
        
        view_xport[0] = 0;
        view_yport[0] = 0;
        view_wport[0] = 1920*0.5;
        view_hport[0] = 1080*0.5;
        //0
        
        
        //1
        view_visible[1] = true;
        view_object[1] = ds_list_find_value(LIST_playerIDS, 1);
        
        view_xview[1] = 0;
        view_yview[1] = 0;
        view_wview[1] = CONST_VIEW_WIDTH;
        view_hview[1] = CONST_VIEW_HEIGHT;
        
        view_hborder[1] = CONST_VIEW_WIDTH*0.5;
        view_vborder[1] = CONST_VIEW_HEIGHT*0.5;
        
        view_xport[1] = (1920*0.5) + 5;
        view_yport[1] = 0;
        view_wport[1] = (1920*0.5);
        view_hport[1] = 1080*0.5;
        //1
        
        
        
        
        //2
        view_visible[2] = true;
        view_object[2] = ds_list_find_value(LIST_playerIDS, 2);
            
        view_xview[2] = 0;
        view_yview[2] = 0;
        view_wview[2] = CONST_VIEW_WIDTH;
        view_hview[2] = CONST_VIEW_HEIGHT;
            
        view_hborder[2] = 320;
        view_vborder[2] = 240;
            
        view_xport[2] = 0;
        view_yport[2] = (1080*0.5) + 5;
        view_wport[2] = 1920*0.5;
        view_hport[2] = (1080*0.5)+5;
        //2
        
        
        
        
        //3
        
        view_visible[3] = true;
        view_object[3] = ds_list_find_value(LIST_playerIDS, 3);
            
        view_xview[3] = 0;
        view_yview[3] = 0;
        view_wview[3] = CONST_VIEW_WIDTH;
        view_hview[3] = CONST_VIEW_HEIGHT;
            
        view_hborder[3] = 320;
        view_vborder[3] = 240;
            
        view_xport[3] = (1920*0.5) + 5;
        view_yport[3] = (1080*0.5) + 5;
        view_wport[3] = 1920*0.5;
        view_hport[3] = (1080*0.5)+5;
        
        //3
    
    
        break;
        
        
        
        

        
        
        


}
