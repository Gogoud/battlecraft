draw_set_blend_mode(bm_add);
switch(VAR_players)
{


    case 2:
        draw_line_width_color(0,room_height*0.5, room_width, room_height*0.5,3,c_blue,c_navy);
        break;
    
    case 3:
        draw_line_width_color(0,room_height*0.5, room_width, room_height*0.5,3,c_blue,c_navy);
        draw_line_width_color(room_width*0.5,room_height*0.5,room_width*0.5,room_height,3,c_blue,c_navy);
        break;
    
    case 4:
        draw_line_width_color(0,room_height*0.5, room_width, room_height*0.5,3,c_blue,c_navy);
        draw_line_width_color(room_width*0.5,0,room_width*0.5,room_height,3,c_blue,c_navy);
        break;
        
        

}
 draw_set_blend_mode(bm_normal)
